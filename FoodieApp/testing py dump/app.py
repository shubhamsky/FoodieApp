from Getconn import getconn
from flask import Flask, render_template, request, redirect, session
from datetime import date
import time
mydb = getconn()
cur = mydb.cursor()

app = Flask(__name__)
app.static_folder='static'
app.secret_key ="abc"

##@app.route('/',methods=['GET', 'POST'])
##def index():
##        if request.method == "POST":
##                details = request.form
##                MobileNo = details['mobileno']
##                EmailId = details['emailid']
##                PASSWRD = details['password']
##                cur.execute("INSERT INTO signup(MobileNo, EmailId, PASSWRD) VALUES (%s, %s, %s)", (MobileNo, EmailId, PASSWRD))
##                mydb.commit()
##                mydb.close()
##                return 'success'
##        return render_template('in.html')

@app.route('/',methods=['GET', 'POST'])
def index():
        if request.method == "POST":
                details = request.form
                MobileNo = details['MobileNo']
                Emailid = details['Emailid']
                Password = details['Password']
                cur.execute("INSERT INTO signup(MobileNo, EmailId, PASSWRD) VALUES (%s, %s, %s)", (MobileNo, Emailid, Password))
                mydb.commit()
                mydb.close()
                return 'success'
        return render_template('signup.html')


##@app.route('/login',methods=['GET', 'POST'])
##def login():
##        if request.method == "POST":
##                details = request.form
####                EmailId = details['emailid']
####                PASSWRD = details['password']
##                cur.execute("Select * from signupdetails")
####                login_query = "Select Custid from signupdetails where EmailId=(%s) and PASSWRD=(%s)"
####                cur.execute(login_query, EmailId, PASSWRD)
##                records = cur.fetchall()
##                for row in records:
##                        print("CustId  = ", row[0], "\n")
##                        print("EmailId = ", row[2], )
##                        print("MobileNo = ", row[1])
##                        print("PASSWRD  = ", row[3])     
##                mydb.close()
##                return 'success from login function'
##        return render_template('lg.html')
##
@app.route('/login1',methods=['GET', 'POST'])
def login1():
        today = date.today()
        d1 = today.strftime("%d/%m/%Y")
        t = time.localtime()
        current_time = time.strftime("%H:%M:%S", t)
        if request.method == "POST":
                details = request.form
                EmailId = details['emailid']
                PASSWRD = details['password']
                cur.execute("""select * from signup where EmailId = %s and PASSWRD = %s""",(EmailId,PASSWRD))
                records = cur.fetchall()
                for row in records:
                        print("CustId  = ", row[0], "\n")
                        session['id'] = row[0]
                        success()
                mydb.close()

                return 'success from login1 function'
        return render_template('lg.html')

@app.route('/login2',methods=['GET', 'POST'])
def login2():
        if request.method == "POST":
                details = request.form
                EmailId = details['emailid']
                PASSWRD = details['password']
                cur.execute("""select * from signup where EmailId = %s and PASSWRD = %s""",(EmailId,PASSWRD))
                records = cur.fetchall()
                for row in records:
                        print("CustId  = ", row[0], "\n")
                        print("EmailIdId = ", row[2], )
                        print("MobileNo = ", row[1])
                        print("PASSWRD  = ", row[3])
                mydb.close()
                success()
        return render_template('lg.html')

@app.route('/success',methods=['GET', 'POST'])
def success():
        today = date.today()
        d1 = today.strftime("%d/%m/%Y")
        t = time.localtime()
        current_time = time.strftime("%H:%M:%S", t)
##        s = session['id']
##        print("session",s)
        print("current_time ",current_time)
        print("d1 ",d1)
        cur1 = mydb.cursor()
        #cur.execute("INSERT into login(Cust_No, Is_login, Custlogintime, Custlogindate) VALUES (%s, %s, %s, %s)", (2, 'Y', '16:15:35', '2020/10/18'))
        cur1.execute("INSERT into lg(clgindt, clginloc, clgintime, islgin, cno) VALUES (%s, %s, %s, %s, %s)", (d1, 'Kalyan', current_time,'Y', 2))
        return render_template('lg.html')

if __name__ == '__main__':
    app.run()
		

