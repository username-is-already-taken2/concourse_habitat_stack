pkg_name=concourse-web
pkg_origin=digitalgaz
pkg_version="0.1.0"
pkg_maintainer="Gary Bright <digitalgaz@hotmail.com>"
pkg_license=('Apache-2.0')
pkg_description="CI that scales with your project"
pkg_upstream_url="https://concourse.ci"
pkg_deps=(digitalgaz/concourse core/postgresql-client)
# needed to run on port 80
pkg_svc_group="root"
pkg_svc_user="root"
pkg_exports=(
  [port]=concourse.web.bind_port
)
pkg_exposes=(port)
pkg_optional_binds=(
  [database]="port"
)

do_build(){
  return 0
}

do_install(){
  return 0
}
