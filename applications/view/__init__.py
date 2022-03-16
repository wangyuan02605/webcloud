from applications.view.admin import register_admin_views
from applications.view.index import register_index_views
from applications.view.passport import register_passport_views
from applications.view.rights import register_rights_view
from applications.view.department import register_dept_views
from applications.view.enterprise import register_recruitment_views
from applications.view.student import register_resume_views
from applications.view.manage import register_manage_views
<<<<<<< HEAD
from applications.view.browse import register_browse_views
=======

>>>>>>> f1fb4f2ce8206569e166809a701f94b958bf0f6c
def init_view(app):
    register_admin_views(app)
    register_index_views(app)
    register_rights_view(app)
    register_passport_views(app)
    register_dept_views(app)
    register_recruitment_views(app)
    register_resume_views(app)
    register_manage_views(app)
<<<<<<< HEAD
    register_browse_views(app)
=======
>>>>>>> f1fb4f2ce8206569e166809a701f94b958bf0f6c
