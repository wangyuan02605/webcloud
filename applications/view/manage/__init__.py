from flask import Flask

from applications.view.manage.manage import manage_BP



def register_manage_views(app: Flask):

    app.register_blueprint(manage_BP)
