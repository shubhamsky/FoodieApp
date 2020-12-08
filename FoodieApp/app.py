from Getconn import getconn
from flask import Flask, render_template, request, redirect
mydb = getconn()
cur = mydb.cursor()

app = Flask(__name__)
app.static_folder='static'

@app.route('/',methods=['GET', 'POST'])
def index():
        if request.method == "POST":
                details = request.form
                MobileNo = details['mobileno']
                EmailId = details['emailid']
                PASSWRD = details['password']
                cur.execute("INSERT INTO signupdetails(MobileNo, EmailId, PASSWRD) VALUES (%s, %s, %s)", (MobileNo, EmailId, PASSWRD))
                mydb.commit()
                mydb.close()
                return 'success'
        return render_template('in.html')

if __name__ == '__main__':
    app.run()
		

