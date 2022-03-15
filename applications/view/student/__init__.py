from flask import Flask

from applications.view.student.resume import resume_BP



def register_resume_views(app: Flask):

    app.register_blueprint(resume_BP)
