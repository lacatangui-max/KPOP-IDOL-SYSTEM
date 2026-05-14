from flask import Flask, render_template, request, redirect, session
from flask_mysqldb import MySQL

app = Flask(__name__)

app.secret_key = 'kpopsecretkey'

# DATABASE CONFIG
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'cccs105'

mysql = MySQL(app)

@app.route('/login', methods=['GET', 'POST'])
def login():

    if request.method == 'POST':

        username = request.form['username']
        password = request.form['password']

        # DEFAULT LOGIN
        if username == 'admin' and password == '1234':

            session['logged_in'] = True

            return redirect('/')

        else:
            return 'Invalid Username or Password'

    return render_template('login.html')

@app.route('/')
def home():

    if 'logged_in' not in session:
        return redirect('/login')

    return render_template('home.html')

@app.route('/groups')
def groups():

    if 'logged_in' not in session:
        return redirect('/login')

    cur = mysql.connection.cursor()

    cur.execute("SELECT * FROM groups")

    data = cur.fetchall()

    cur.close()

    return render_template(
        'groups.html',
        groups=data
    )

@app.route('/idols')
def idols():

    if 'logged_in' not in session:
        return redirect('/login')

    cur = mysql.connection.cursor()

    cur.execute("SELECT * FROM idols")

    data = cur.fetchall()

    cur.close()

    return render_template(
        'idols.html',
        idols=data
    )

@app.route('/albums')
def albums():

    if 'logged_in' not in session:
        return redirect('/login')

    cur = mysql.connection.cursor()

    cur.execute("SELECT * FROM albums")

    data = cur.fetchall()

    cur.close()

    return render_template(
        'albums.html',
        albums=data
    )

@app.route('/songs')
def songs():

    if 'logged_in' not in session:
        return redirect('/login')

    cur = mysql.connection.cursor()

    cur.execute("SELECT * FROM songs")

    data = cur.fetchall()

    cur.close()

    return render_template(
        'songs.html',
        songs=data
    )

@app.route('/add_idol', methods=['GET', 'POST'])
def add_idol():

    if 'logged_in' not in session:
        return redirect('/login')

    if request.method == 'POST':

        stage_name = request.form['stage_name']
        real_name = request.form['real_name']
        birthdate = request.form['birthdate']
        nationality = request.form['nationality']
        position = request.form['position']
        instagram = request.form['instagram']
        group_id = request.form['group_id']

        cur = mysql.connection.cursor()

        cur.execute("""
            INSERT INTO idols
            (stage_name, real_name, birthdate, nationality, position, instagram, group_id)
            VALUES (%s,%s,%s,%s,%s,%s,%s)
        """, (
            stage_name,
            real_name,
            birthdate,
            nationality,
            position,
            instagram,
            group_id
        ))

        mysql.connection.commit()

        cur.close()

        return redirect('/idols')

    return render_template('add_idol.html')

@app.route('/edit_idol/<int:id>', methods=['GET', 'POST'])
def edit_idol(id):

    if 'logged_in' not in session:
        return redirect('/login')

    cur = mysql.connection.cursor()

    if request.method == 'POST':

        stage_name = request.form['stage_name']
        real_name = request.form['real_name']
        birthdate = request.form['birthdate']
        nationality = request.form['nationality']
        position = request.form['position']
        instagram = request.form['instagram']
        group_id = request.form['group_id']

        cur.execute("""
            UPDATE idols
            SET
                stage_name=%s,
                real_name=%s,
                birthdate=%s,
                nationality=%s,
                position=%s,
                instagram=%s,
                group_id=%s
            WHERE idol_id=%s
        """, (
            stage_name,
            real_name,
            birthdate,
            nationality,
            position,
            instagram,
            group_id,
            id
        ))

        mysql.connection.commit()

        cur.close()

        return redirect('/idols')

    cur.execute("SELECT * FROM idols WHERE idol_id=%s", (id,))

    idol = cur.fetchone()

    cur.close()

    return render_template(
        'edit_idol.html',
        idol=idol
    )

@app.route('/delete_idol/<int:id>')
def delete_idol(id):

    cur = mysql.connection.cursor()

    cur.execute(
        "DELETE FROM idols WHERE idol_id=%s",
        (id,)
    )

    mysql.connection.commit()

    cur.close()

    return redirect('/idols')

@app.route('/logout')
def logout():

    session.pop('logged_in', None)

    return redirect('/login')

if __name__ == '__main__':
    app.run(debug=True)