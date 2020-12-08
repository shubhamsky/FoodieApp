from flask import Flask, render_template
app = Flask(__name__)
app.static_folder='static'

@app.route('/')
def root():
	return render_template('del_index.html')

@app.route('/del_signup.html')
def delsignup():
	return render_template('del_signup.html')

@app.route('/del_login.html')
def dellogin():
	return render_template('del_login.html')

@app.route('/del_index.html')
def delindex():
	return render_template('del_index.html')

if __name__ == '__main__':
    app.run()
    

                           
