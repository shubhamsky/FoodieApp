from Getconn import getconn
from flask import Flask, render_template, request, redirect
import re
app = Flask(__name__)
app.static_folder='static'
file1 = open('pass.txt', 'w').close()
@app.route('/',methods=['GET', 'POST'])
def index():
        password = []
        if request.method == "POST":
            details = request.form
            if details['Name'] and details['password']:  
                UserName = details['Name']
                PASSWRD = details['password']
                if len(PASSWRD)>=6 and len(PASSWRD)<=12:
                        if not re.search("[a-z]",PASSWRD):
                                print( "Password must contain [a-z] characters")
                        elif not re.search("[A-Z]",PASSWRD):
                                print( "Password must contain [A-Z] characters")
                        elif not re.search("[0-9]",PASSWRD):
                                print( "Password must contain [0-9] characters")
                        elif not re.search("[@_$]",PASSWRD):
                                print( "Password must contain either[@,_,$] special characters")
                        else:
                                print("Valid Password!!!")
                                file = open("pass.txt","a+")
                                fw = file.write(PASSWRD+',')
                                fw = file.write('\n'+PASSWRD+" is valid Password...")
                                file.seek(0)
                                return file.read()
                                file.close()
                else:
                        print( 'Password length should be beween 6-12')
                
                file = open("pass.txt","a+")
                fw = file.write(PASSWRD+',')

                
                
        return render_template('signupassignment9.html')


if __name__ == '__main__':
    app.run()
