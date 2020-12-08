from flask import Flask, render_template
app = Flask(__name__)
app.static_folder='static'

@app.route('/', methods=['GET', 'POST'])
def index():
        return render_template('in.html')

if __name__ == '__main__':
    app.run()
		

