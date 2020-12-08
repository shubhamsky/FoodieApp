from flask import Flask, render_template, request, redirect, session, url_for
from Getconn import getconn
from HotelManager import getHotelMenu
from ProfileManager import getUserProfile, updateUserProfile
from datetime import date
import time
import json
import sys

mydb = getconn()
cur = mydb.cursor()

app = Flask(__name__)
app.secret_key = "onlinefoodorder"  
app.static_folder= 'static'


##signup customer  
@app.route('/signup',methods=['GET', 'POST'])
def signup():
        if checkSession():
            return redirect(url_for('/home'))
        else:
            success = "Congratulations Account Created Successfully !!!"
            if request.method == "POST":
                    details = request.form
                    if details['UserName']!="" and details['MobileNo']!="" and details['Emailid']!="" and details['Password']!="":
                        UserName = details['UserName']
                        MobileNo = details['MobileNo']
                        Emailid = details['Emailid']
                        Password = details['Password']
                        cur.execute("INSERT INTO signup(UserName, MobileNo, EmailId, PASSWRD) VALUES (%s, %s, %s, %s)", (UserName, MobileNo, Emailid, Password))
                        mydb.commit()
                        # inserting Profile
                        cur.execute("Select Cust_Id, UserName from signup WHERE MobileNo = %s",(MobileNo,))
                        record = cur.fetchone()
                        cur.execute("INSERT into profile (Cust_No, CustName) VALUES(%s, %s)",(record[0],record[1]))
                        mydb.commit()
                        mydb.close()
                        print( 'success' )
                        return render_template('signedup.html', success=success)
            return render_template('signup.html')

##login customer 
@app.route('/login',methods=['GET', 'POST'])
def login():  
    today = date.today()
    d1 = today.strftime("%Y/%m/%d")
    t = time.localtime()
    current_time = time.strftime("%H:%M:%S", t)
    
    if request.method == "POST":
        print("Inside Login")
        details = request.form
        if details['mobileemail']!="" and details['pass']!="":
            MobileEmail = details['mobileemail']
            PASSWRD = details['pass']
            cur.execute("""select Cust_Id,UserName from signup where MobileNo =%s and PASSWRD = %s""",(MobileEmail,PASSWRD))
            records = cur.fetchone()
            if records is not None:
                print("session id loop")
                try:
                    session['id'] = records[0]
                    session['name'] = records[1]
                    sessionid = session['id']
                    sessionname = session['name']
                    print("customer id", sessionid)
                    print("sessionname", sessionname)
                    cur.execute("INSERT into login(Cust_No, Is_login, Custlogintime, Custlogindate) VALUES (%s, %s, %s, %s)", (sessionid, 'Y',current_time , d1))
                    mydb.commit()
                    return render_template('home.html',data=sessionname)
                except:
                        print("Inside exception")
                finally:
                        print("mydb close")
            else:
                print("Login Failed!!!")
                return render_template('login.html')
        else:
            return redirect(url_for('home'))
    else:
        if checkSession():
            return redirect(url_for('/home'))
        else:
            return render_template('login.html')

# Home Page
@app.route('/home', defaults={"city": ""})
@app.route("/home/<city>")
def home(city):
        if checkSession():
            return render_template('home.html', city = city)
        else:
            print('INside Else of without session')
            print(city)
            return render_template('home.html', city = city)


@app.route('/forgotpass.html')
def passwd():
    if checkSession():
        return redirect(url_for('/login'))
    else:
        return render_template('forgotpass.html')

@app.route('/index')
def index():
    if checkSession():
        return redirect(url_for('home'))
    else:
        return render_template('index.html')
    

@app.route('/')
def index1():
    return redirect(url_for('index'))

# GetHotelListApi
@app.route('/findhotel/<string:city>', methods=['GET', 'POST'])
def findhotel(city):
        session['location'] = city
        cur.execute("""SELECT * FROM rprofile LEFT JOIN rstimg ON rprofile.Rst_No = rstimg.rst_no WHERE RstCity = %s or rstpincode = %s """,(city,city))
        records = cur.fetchall()
        return json.dumps({'results': records})
        
# Get HotelAPI        
@app.route('/gethotel/<string:hotelId>', methods=['GET', 'POST'])
def getHotel(hotelId):
        print('hotel Id: ' + hotelId)
        hotelViewModel = getHotelMenu(hotelId)
        return render_template('hotel.html', hotelViewModel = hotelViewModel)

@app.route('/profile',methods=['GET', 'POST'])
def profile():
    if checkSession():
        if request.method == "POST":
            print("Inside Profile Post")
            updateUserProfile(request.form)
            profileViewModel = getUserProfile(session['id'])
            session['location'] = profileViewModel.City1
            return render_template('profile.html', profileViewModel = profileViewModel)
        else:
            # Get User Details
            print('calling profile manager')
            profileViewModel = getUserProfile(session['id'])
            return render_template('profile.html', profileViewModel = profileViewModel)
    else:
        return redirect(url_for('login'))

# Sign Out
@app.route("/sign-out")
def sign_out():
    session.pop("id", None)
    session.pop("name", None)
    return redirect(url_for('login'))

# order get and delete
@app.route('/myorder/', defaults = {'orderid':0})
@app.route("/myorder/<orderid>")
def order(orderid):
    if checkSession():
        if orderid != 0:
            print('Delete order row id : ')
            print(orderid)
            cur.execute("Delete FROM orderdetails WHERE Ordetails_id =%s",(orderid,))
            print(orderid)
        print('***********Session Id:')
        print(session['id'])
        print('***********Fetching orders******************')
        cur.execute("SELECT * FROM orderdetails WHERE Cust_Id =%s",(session['id'],))
        orders = cur.fetchall()
        return render_template('myorder.html', orders = orders)
    else:
        return redirect(url_for('login'))
  


@app.route('/cart', methods=['GET', 'POST'])
def checkout():        
    if request.method == "POST":
        print(request.json)
        cart = request.json
        if checkSession():
            print(cart['HotelMenuId']) 
            for item in cart['List']:
                print(item['Id'])
                print(item['ItemName'])
                print(item['Quantity'])
                print(item['Total'])
                cur.execute("INSERT INTO orderdetails (R_MnNo, R_FoodNo, R_FoodName, Qty, R_TotalFoodPrice, Cust_Id) VALUES(%s, %s, %s, %s, %s, %s)",
                 (cart['HotelMenuId'], item['Id'], item['ItemName'] , item['Quantity'], item['Total'], session['id']))
            mydb.commit() 
            mydb.close() 
            return json.dumps([True])
        else:
            return json.dumps([False])
    else:
        return redirect(url_for('login'))



###########################################
# Session check
def checkSession():
    if "name" in session:
        userName = session["name"]
        print('session is active !')
        print(userName)
        return True
    else:
        return False
###########################################
        
if __name__ == '__main__':
    app.run(debug=True)


    
                           
