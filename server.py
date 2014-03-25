from flask import Flask, render_template, request
import MySQLdb, MySQLdb.cursors 
import utils

app = Flask(__name__)
	

@app.route('/')
def mainIndex():
    return render_template('index.html', selected='Home')

#@app.route('/review.html')
#def review():
#    return render_template('review.html')

#@app.route('/submit', methods=['POST'])
#def submit():
#    r = {'Food': request.form['Food'],
#               'Location': request.form['Location'],
#               'Number': request.form['Number'],
#               'Description': request.form['Description']} 
#    db = utils.db_connect()
#    cur = db.cursor()
#    query = 'INSERT INTO reviews VALUES (\'' + r['Food'] + '\',\'' + r['Location'] + '\',' + r['Number'] + ',\'' + r['Description'] + '\');'
#    cur.execute(query)
#    db.commit()
#    query = 'SELECT * from reviews'
#    cur.execute(query)
#    rows = cur.fetchall()
#    return render_template('reviews.html', reviews=rows, selectedMenu='Reviews')


@app.route('/reviews.html')
def reviews():
    db = utils.db_connect()
    cur = db.cursor(cursorclass=MySQLdb.cursors.DictCursor)
    query = 'SELECT f.name Food, r.description Comments, r.rating Rating from foods f inner join review_food rf on rf.foodkey = f.foodkey inner join reviews r on rf.reviewkey = r.reviewkey'
    cur.execute(query)
    rows = cur.fetchall()
    return render_template('reviews.html', reviews=rows, selectedMenu='Reviews')

@app.route('/descriptions.html')
def descriptions():
    #db = utils.db_connect()
    #cur = db.cursor(cursorclass=MySQLdb.cursors.DictCursor)
    #query = 'SELECT * from descriptions'
    #print query
    #cur.execute(query)
    #rows = cur.fetchall()
    #return render_template('descriptions.html', descriptions=rows, selectedMenu='Descriptions')
    return render_template('descriptions.html', selectedMenu='Descriptions')

@app.route('/menus.html') #need to change to foods!!
def menus():
    #db = utils.db_connect()
    #cur = db.cursor(cursorclass=MySQLdb.cursors.DictCursor)
    #query = 'SELECT * from menu'
    #print query
    #cur.execute(query)
    #rows = cur.fetchall()
    #return render_template('menus.html', menu=rows, selectedMenu='Menus')
    return render_template('menus.html', selectedMenu='Menus')

@app.route('/contact.html')
def contact():
    return render_template('contact.html', selectedMenu='Contact Us')

@app.route('/future.html')
def future():
    return render_template('future.html', selectedMenu='Future Plans')
  
if __name__ == '__main__':
  app.debug=True
  app.run(host='0.0.0.0', port=3000)

