from flask import Flask, render_template, request
from flask import Flask
app = Flask(__name__)
	

@app.route('/')
def mainIndex():
    return render_template('index.html', selected='Home')

@app.route('/reviews.html')
def reviews():
    return render_template('reviews.html', selected='Reviews')

@app.route('/descriptions.html')
def contact():
    return render_template('descriptions.html', selectedMenu='Descriptions')

@app.route('/menus.html')
def page():
    return render_template('menus.html', selectedMenu='Menus')
  
@app.route('/contact.html')
def another_page():
    return render_template('contact.html', selectedMenu='Contact Us')
  
if __name__ == '__main__':
  app.debug=True
  app.run(host='0.0.0.0', port=3000)
