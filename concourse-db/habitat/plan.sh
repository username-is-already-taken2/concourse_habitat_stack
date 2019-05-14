pkg_name=concourse-db
pkg_origin=digitalgaz
pkg_version="1.0.0"
pkg_maintainer="Gary Bright <digitalgaz@hotmail.com>"
pkg_license=("Apache-2.0")
pkg_deps=(core/glibc core/postgresql)

pkg_exports=(
  [postgresql_port]=postgresql.port
  [concourse_db_username]=concourse.db.username
  [concourse_db_password]=concourse.db.password
  [concourse_db_name]=concourse.db.name
)

pkg_exposes=(postgresql_port)
do_build(){
  return 0
}
do_install(){
  return 0     
}
