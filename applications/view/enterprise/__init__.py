from flask import Flask

from applications.view.enterprise.recruitment import recruitment_BP



def register_recruitment_views(app: Flask):

    app.register_blueprint(recruitment_BP)
