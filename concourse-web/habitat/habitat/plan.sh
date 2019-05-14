pkg_name=concourse-web
pkg_origin=digitalgaz
pkg_version="0.11.0"
pkg_maintainer="Gary Bright <digitalgaz@hotmail.com>"
pkg_license=('Apache-2.0')
pkg_description="CI that scales with your project"
pkg_upstream_url="https://concourse.ci"
pkg_deps=(digitalgaz/concourse core/postgresql-client)
# needed to run on port 80
pkg_svc_group="root"
pkg_svc_user="root"
pkg_exports=(
  [concourse_web_tsa_port]=concourse.web.tsa_port
  [concourse_web_bind_port]=concourse.web.bind_port
)
pkg_exposes=(concourse_web_bind_port)
pkg_binds=(
  [database]="postgresql_port concourse_db_username concourse_db_password concourse_db_name"
)

do_build(){
  return 0
}

do_install(){
  return 0
}
