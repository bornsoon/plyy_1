# app.py
from flask import Flask

def create_app():
    app = Flask(__name__)
    app.secret_key = 'plyy_page'

    from views import logout, mypage, login, curator, api_curator, like_curator, unlike_curator, like_plyy, unlike_plyy
    from views2 import main, plyy, search, likes, api_main, api_plyy, api_c_plyy, api_search, api_like


    app.register_blueprint(main, url_prefix='/')
    app.register_blueprint(plyy, url_prefix='/plyy')
    app.register_blueprint(search, url_prefix='/search')
    app.register_blueprint(likes, url_prefix='/like')
    app.register_blueprint(api_main, url_prefix='/api/main')
    app.register_blueprint(api_plyy, url_prefix='/api/plyy')
    app.register_blueprint(api_c_plyy, url_prefix='/api/c_plyy')
    app.register_blueprint(api_search, url_prefix='/api/search')
    app.register_blueprint(api_like, url_prefix='/api/like')
    app.register_blueprint(logout, url_prefix='/')
    app.register_blueprint(mypage, url_prefix='/')
    app.register_blueprint(login, url_prefix='/')
    app.register_blueprint(curator, url_prefix='/')
    app.register_blueprint(api_curator, url_prefix='/')
    app.register_blueprint(like_curator, url_prefix='/')
    app.register_blueprint(unlike_curator, url_prefix='/')
    app.register_blueprint(like_plyy, url_prefix='/')
    app.register_blueprint(unlike_plyy, url_prefix='/')

    return app

if __name__ == "__main__":
    app = create_app()
    app.run(debug=True)
