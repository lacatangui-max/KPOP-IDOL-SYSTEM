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

    message = ''

    if request.method == 'POST':

        username = request.form['username']
        password = request.form['password']

        # DEFAULT LOGIN
        if username == 'admin' and password == '1234':

            session['logged_in'] = True

            return redirect('/')

        else:

            message = 'Invalid Username or Password!'

    return render_template(
        'login.html',
        message=message
    )

# HOME
@app.route('/')
def home():

    if 'logged_in' not in session:
        return redirect('/login')

    return render_template('home.html')

# =========================
# IDOLS
# =========================

@app.route('/idols')
def idols():

    if 'logged_in' not in session:
        return redirect('/login')

    search = request.args.get('search', '')

    cur = mysql.connection.cursor()

    query = """
        SELECT * FROM idols
        WHERE stage_name LIKE %s
        OR real_name LIKE %s
        OR nationality LIKE %s
        OR position LIKE %s
    """

    search_term = f"%{search}%"

    cur.execute(query, (
        search_term,
        search_term,
        search_term,
        search_term
    ))

    data = cur.fetchall()

    cur.close()

    return render_template('idols.html', idols=data)

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

    return render_template('edit_idol.html', idol=idol)

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

# =========================
# GROUPS
# =========================

@app.route('/groups')
def groups():

    if 'logged_in' not in session:
        return redirect('/login')

    search = request.args.get('search', '')

    cur = mysql.connection.cursor()

    query = """
        SELECT * FROM groups
        WHERE group_name LIKE %s
        OR agency LIKE %s
    """

    search_term = f"%{search}%"

    cur.execute(query, (search_term, search_term))

    data = cur.fetchall()

    cur.close()

    return render_template('groups.html', groups=data)


@app.route('/add_group', methods=['GET', 'POST'])
def add_group():

    if 'logged_in' not in session:
        return redirect('/login')

    if request.method == 'POST':

        group_name = request.form['group_name']
        debut_year = request.form['debut_year']
        agency = request.form['agency']

        cur = mysql.connection.cursor()

        cur.execute("""
            INSERT INTO groups
            (group_name, debut_year, agency)
            VALUES (%s,%s,%s)
        """, (
            group_name,
            debut_year,
            agency
        ))

        mysql.connection.commit()

        cur.close()

        return redirect('/groups')

    return render_template('add_group.html')


@app.route('/edit_group/<int:id>', methods=['GET', 'POST'])
def edit_group(id):

    if 'logged_in' not in session:
        return redirect('/login')

    cur = mysql.connection.cursor()

    if request.method == 'POST':

        group_name = request.form['group_name']
        debut_year = request.form['debut_year']
        company = request.form['company']

        cur.execute("""
            UPDATE groups
            SET
                group_name=%s,
                debut_year=%s,
                company=%s
            WHERE group_id=%s
        """, (
            group_name,
            debut_year,
            company,
            id
        ))

        mysql.connection.commit()

        cur.close()

        return redirect('/groups')

    cur.execute(
        "SELECT * FROM groups WHERE group_id=%s",
        (id,)
    )

    group = cur.fetchone()

    cur.close()

    return render_template(
        'edit_group.html',
        group=group
    )


@app.route('/delete_group/<int:id>')
def delete_group(id):

    if 'logged_in' not in session:
        return redirect('/login')

    cur = mysql.connection.cursor()

    cur.execute(
        "DELETE FROM groups WHERE group_id=%s",
        (id,)
    )

    mysql.connection.commit()

    cur.close()

    return redirect('/groups')

# =========================
# ALBUMS
# =========================

@app.route('/albums')
def albums():

    if 'logged_in' not in session:
        return redirect('/login')

    search = request.args.get('search', '')

    cur = mysql.connection.cursor()

    query = """
        SELECT * FROM albums
        WHERE album_name LIKE %s
        OR album_type LIKE %s
    """

    search_term = f"%{search}%"

    cur.execute(
        query,
        (search_term, search_term)
    )

    data = cur.fetchall()

    cur.close()

    return render_template(
        'albums.html',
        albums=data
    )


@app.route('/add_album', methods=['GET', 'POST'])
def add_album():

    if 'logged_in' not in session:
        return redirect('/login')

    if request.method == 'POST':

        album_name = request.form['album_name']
        release_date = request.form['release_date']
        album_type = request.form['album_type']

        cur = mysql.connection.cursor()

        cur.execute("""
            INSERT INTO albums
            (album_name, release_date, album_type)
            VALUES (%s,%s,%s)
        """, (
            album_name,
            release_date,
            album_type
        ))

        mysql.connection.commit()

        cur.close()

        return redirect('/albums')

    return render_template('add_album.html')


@app.route('/edit_album/<int:id>', methods=['GET', 'POST'])
def edit_album(id):

    if 'logged_in' not in session:
        return redirect('/login')

    cur = mysql.connection.cursor()

    if request.method == 'POST':

        album_name = request.form['album_name']
        release_date = request.form['release_date']
        album_type = request.form['album_type']

        cur.execute("""
            UPDATE albums
            SET
                album_name=%s,
                release_date=%s,
                album_type=%s
            WHERE album_id=%s
        """, (
            album_name,
            release_date,
            album_type,
            id
        ))

        mysql.connection.commit()

        cur.close()

        return redirect('/albums')

    cur.execute(
        "SELECT * FROM albums WHERE album_id=%s",
        (id,)
    )

    album = cur.fetchone()

    cur.close()

    return render_template(
        'edit_album.html',
        album=album
    )


@app.route('/delete_album/<int:id>')
def delete_album(id):

    if 'logged_in' not in session:
        return redirect('/login')

    cur = mysql.connection.cursor()

    cur.execute(
        "DELETE FROM albums WHERE album_id=%s",
        (id,)
    )

    mysql.connection.commit()

    cur.close()

    return redirect('/albums')

# =========================
# SONGS
# =========================

@app.route('/songs')
def songs():

    if 'logged_in' not in session:
        return redirect('/login')

    search = request.args.get('search', '')

    cur = mysql.connection.cursor()

    query = """
        SELECT * FROM songs
        WHERE song_name LIKE %s
        OR genre LIKE %s
    """

    search_term = f"%{search}%"

    cur.execute(
        query,
        (search_term, search_term)
    )

    data = cur.fetchall()

    cur.close()

    return render_template(
        'songs.html',
        songs=data
    )


@app.route('/add_song', methods=['GET', 'POST'])
def add_song():

    if 'logged_in' not in session:
        return redirect('/login')

    if request.method == 'POST':

        song_name = request.form['song_name']
        duration = request.form['duration']
        genre = request.form['genre']

        cur = mysql.connection.cursor()

        cur.execute("""
            INSERT INTO songs
            (song_name, duration, genre)
            VALUES (%s,%s,%s)
        """, (
            song_name,
            duration,
            genre
        ))

        mysql.connection.commit()

        cur.close()

        return redirect('/songs')

    return render_template('add_song.html')


@app.route('/edit_song/<int:id>', methods=['GET', 'POST'])
def edit_song(id):

    if 'logged_in' not in session:
        return redirect('/login')

    cur = mysql.connection.cursor()

    if request.method == 'POST':

        song_name = request.form['song_name']
        duration = request.form['duration']
        genre = request.form['genre']

        cur.execute("""
            UPDATE songs
            SET
                song_name=%s,
                duration=%s,
                genre=%s
            WHERE song_id=%s
        """, (
            song_name,
            duration,
            genre,
            id
        ))

        mysql.connection.commit()

        cur.close()

        return redirect('/songs')

    cur.execute(
        "SELECT * FROM songs WHERE song_id=%s",
        (id,)
    )

    song = cur.fetchone()

    cur.close()

    return render_template(
        'edit_song.html',
        song=song
    )


@app.route('/delete_song/<int:id>')
def delete_song(id):

    if 'logged_in' not in session:
        return redirect('/login')

    cur = mysql.connection.cursor()

    cur.execute(
        "DELETE FROM songs WHERE song_id=%s",
        (id,)
    )

    mysql.connection.commit()

    cur.close()

    return redirect('/songs')

# LOGOUT
@app.route('/logout')
def logout():

    session.pop('logged_in', None)

    return redirect('/login')

if __name__ == '__main__':
    app.run(debug=True)
