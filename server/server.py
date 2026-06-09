import os
from flask import Flask, render_template
app = Flask(__name__, template_folder='/data')

@app.route('/')
def home():
   return render_template('report.html')

if __name__ == "__main__":
    port = int(os.environ.get("PORT", 5009))
    app.run(host="0.0.0.0", port=port)