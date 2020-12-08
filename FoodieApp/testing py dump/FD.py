from flask import Flask, render_template
app = Flask(__name__)
app.static_folder='static'

@app.route('/')
def root():
	return render_template('del_index.html')

if __name__ == '__main__':
    app.run()
    

                           
