from flask import Flask

from applications.view.employ.employ import employ_BP



def register_employ_views(app: Flask):

    app.register_blueprint(employ_BP)
