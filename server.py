from flask import Flask, render_template, request
import MySQLdb
import utils

app = Flask(__name__)
	

@app.route('/')
def mainIndex():
    return render_template('index.html', selected='Home')

@app.route('/review', methods=['POST'])
def review():
 
    r = {'Food': request.form['Food'],
               'Location': request.form['Location'],
               'Number': request.form['Number'],
               'Description': request.form['Description']}
               
    db = utils.db_connect()
    cur = db.cursor(cursorclass=MySQLdb.cursors.DictCursor)
    query = 'INSERT INTO reviews VALUES (' + r.Food +',' + r.Location + ',' + r.Number + ',' + r.Description + ');'
    print query
    cur.execute(query)
    query = 'SELECT * from reviews'
    print query
    cur.execute(query)
    rows = cur.fetchall()
    return render_template('reviews.html', reviews=rows, selectedMenu='Reviews')


@app.route('/reviews.html')
def reviews():
    db = utils.db_connect()
    cur = db.cursor(cursorclass=MySQLdb.cursors.DictCursor)
    query = 'SELECT * from reviews'
    print query
    cur.execute(query)
    rows = cur.fetchall()
    return render_template('reviews.html', reviews=rows, selectedMenu='Reviews')

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

