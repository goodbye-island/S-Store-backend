Rails.application.routes.draw do

#USER ROUTES
  get 'user_view/UserView'
  get 'user_view' => 'user_view#UserView'

  get 'user_delete/UserDelete'
  get 'user_delete' => 'user_delete#UserDelete'

  get 'user_edit/UserEdit'
  get 'user_edit' => 'user_edit#UserEdit'

  get 'user_add/UserAdd'
  get 'user_add'  => 'user_add#UserAdd'
##################
#DEPARTMENT ROUTES
  get 'department_edit/DepartmentEdit'
  get 'department_edit' => 'department_edit#DepartmentEdit'

  get 'department_view/DepartmentView'
  get 'department_view' => 'department_view#DepartmentView'

  get 'department_add/DepartmentAdd'
  get 'department_add' => 'department_add#DepartmentAdd'
##################

#CLASS ROUTES
  get 'class_delete/class_delete'
  get 'class_delete' => "class_delete#class_delete"

  get 'class_add/class_add'
  get 'class_add' => 'class_add#class_add'

  get 'class_edit/class_edit'
  get 'class_edit' => 'class_edit#class_edit'

  get 'class_view/getClasses'
  get 'class_view' => 'class_view#getClasses'
##################

#SYLLABUS ROUTES
  get 'syllabus_delete/syllabus_delete'
  get 'syllabus_delete' => 'syllabus_delete#syllabus_delete'

  get 'syllabus_add/syllabus_add'
  get 'syllabus_add' => 'syllabus_add#syllabus_add'

  get 'syllabus_edit/syllabus_edit'
  get 'syllabus_edit' => 'syllabus_edit#syllabus_edit'

  get 'syllabus_view/SyllabusView'
  get 'syllabus_view' => 'syllabus_view#SyllabusView'
##################

  get 'semester_view/getSemesters'
  get 'semester_view' => 'semester_view#getSemesters'
  
  get 'unknown_route/UnknownRoute'
  get '*path' => 'unknown_route#UnknownRoute'
end