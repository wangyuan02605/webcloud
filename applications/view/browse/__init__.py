from flask import Flask

from applications.view.browse.browse import browse_BP



def register_browse_views(app: Flask):

    app.register_blueprint(browse_BP)
