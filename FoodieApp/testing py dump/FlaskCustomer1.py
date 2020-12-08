from flask import Flask, render_template, request, redirect
from Getconn import getconn
from datetime import date
import time

app = Flask(__name__)
app.static_folder='static'

@app.route('/',methods=['GET', 'POST'])
def index():
    return render_template('index.html')

@app.route('/login.html',methods=['GET', 'POST'])
def login():
    today = date.today()
    d1 = today.strftime("%d/%m/%Y")
    t = time.localtime()
    current_time = time.strftime("%H:%M:%S", t)
##    print("d1 =", d1)
    if request.method == "POST":
        details = request.form
        if details['mobileemail']!="" and details['pass']!="":
            MobileEmail = details['mobileemail']
            PASSWRD = details['pass']
            cur.execute("""select Cust_Id from signup where MobileNo =%s and PASSWRD = %s""",(MobileEmail,PASSWRD))
            record = cur.fetchone()
            print(record)
            if record:
                cur.execute("""INSERT into login(Cust_No, Is_login, Custlogintime, Custlogindate) VALUES (%s, %s, %s, %s)""", (record, 'Y', current_time, d1))
                mydb.close()
            else:
                print("Login Failed!!!")
    return render_template('login.html')

@app.route('/signup.html', methods=['GET', 'POST'])
def signup():
    if request.method == "POST":
        mydb = getconn()
        cur = mydb.cursor()
        details = request.form
        mobile = details['MobileNo']
        email = details['Emailid']
        password = details['Password']
        cur.execute("""INSERT INTO signup(MobileNo, EmailId, PASSWRD) VALUES (%s, %s, %s)""", (mobile, email, password))
        mydb.commit()
        mydb.close()
        return 'success'
    return render_template('signup.html')

@app.route('/index.html')
def main():
    return render_template('index.html')

@app.route('/home.html')
def home():
    return render_template('home.html')

@app.route('/searchlocation.html')
def loc():
    return render_template('searchlocation.html')

@app.route('/searchdishes.html')
def dishes():
    return render_template('searchdishes.html')

@app.route('/forgotpass.html')
def passwd():
    return render_template('forgotpass.html')

if __name__ == '__main__':
    app.run()
    

                           
