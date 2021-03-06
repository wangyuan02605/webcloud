from applications.view.admin import register_admin_views
from applications.view.index import register_index_views
from applications.view.passport import register_passport_views
from applications.view.rights import register_rights_view
from applications.view.department import register_dept_views
from applications.view.enterprise import register_recruitment_views
from applications.view.student import register_resume_views
from applications.view.manage import register_manage_views

from applications.view.browse import register_browse_views

from applications.view.employ import register_employ_views

def init_view(app):
    register_admin_views(app)
    register_index_views(app)
    register_rights_view(app)
    register_passport_views(app)
    register_dept_views(app)
    register_recruitment_views(app)
    register_resume_views(app)
    register_manage_views(app)
    register_browse_views(app)
    register_employ_views(app)

