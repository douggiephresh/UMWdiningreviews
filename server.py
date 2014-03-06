from flask import Flask, render_template, request
import utils
app = Flask(__name__)

@app.route('/')
def mainIndex():
    return render_template('index.html', selected='Home')

@app.route('/examples.html')
def examples():
    return render_template('examples.html', selected='Examples')

@app.route('/contact.html')
def contact():
    return render_template('contact.html', selectedMenu='Contact US')

@app.route('/page.html')
def page():
    return render_template('page.html', selectedMenu='A Page')
  
@app.route('/another_page.html')
def another_page():
    return render_template('another_page.html', selectedMenu='Another Page')
  
if __name__ == '__main__':
  app.debug=True
  app.run(host='0.0.0.0', port=3000)
