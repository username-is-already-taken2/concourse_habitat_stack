pkg_name=concourse-worker
pkg_origin=digitalgaz
pkg_version="1.0.0"
pkg_maintainer="Gary Bright <digitalgaz@hotmail.com>"
pkg_license=('Apache-2.0')
pkg_description="CI that scales with your project"
pkg_upstream_url="https://concourse.ci"
# Needed to schedule containers
pkg_svc_group="root"
pkg_svc_user="root"
pkg_deps=(digitalgaz/concourse core/iptables core/bash core/findutils)
pkg_binds_optional=(
   [web]="concourse_web_tsa_port"
)

do_build(){
  return 0
}

do_install(){
  return 0
}
