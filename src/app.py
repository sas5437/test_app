from flask import Flask
app = Flask(__name__)

@app.route('/')
def a_route():
	return 'Made it.'

