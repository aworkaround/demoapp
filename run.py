from flask import Flask, make_response, render_template, request, redirect, url_for

app = Flask(__name__)


@app.get('/')
def index():
    username = request.cookies.get('username')
    return render_template('index.html', username=username)

@app.post('/login')
def login():
    username = request.form['username']
    resp = make_response(render_template('index.html', username=username.title(), login=True))
    resp.set_cookie('username', username.title())
    return resp

@app.get('/logout')
def logout():
    resp = make_response(render_template('index.html', logout=True))
    resp.set_cookie('username', '', expires=0)
    return resp


if __name__ == '__main__':
    app.run(debug=True, port=80, host='0.0.0.0')
