from flask import Flask, render_template
import os

app = Flask(__name__)

@app.route('/')
def  home():
     logs = []
     logs_dir = '../logs'

     if os.path.isdir(logs_dir):
         for file in sorted(os.listdir(logs_dir), reverse=True):
             if file.endswith(".log"):
                with open(os.path.join(logs_dir, file)) as f:
                  logs.append((file, f.read()))

     return render_template('dashboard.html', log=logs)

if __name__ == '__main__':
	app.run(debug=True)
