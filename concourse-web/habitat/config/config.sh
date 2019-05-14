#!/bin/bash

#export CONCOURSE_BASIC_AUTH_USERNAME="{{cfg.concourse.username}}"
#export CONCOURSE_BASIC_AUTH_PASSWORD="{{cfg.concourse.password}}"
export CONCOURSE_ADD_LOCAL_USER="{{cfg.concourse.username}}:{{cfg.concourse.password}}"
export CONCOURSE_MAIN_TEAM_LOCAL_USER="{{cfg.concourse.username}}"
{{#if cfg.concourse.external_url}}
export CONCOURSE_EXTERNAL_URL="{{cfg.concourse.external_url}}:{{cfg.concourse.bind_port}}"
{{else ~}}
export CONCOURSE_EXTERNAL_URL="{{sys.ip}}"
{{/if ~}}
export CONCOURSE_BIND_PORT="{{cfg.concourse.bind_port}}"

{{#if bind.database ~}}
{{#with bind.database.first as |pg| }}
export CONCOURSE_POSTGRES_HOST="{{pg.sys.ip}}"
export CONCOURSE_POSTGRES_USER="{{pg.cfg.superuser_name}}"
export CONCOURSE_POSTGRES_PASSWORD="{{pg.cfg.superuser_password}}"
export CONCOURSE_POSTGRES_DATABASE="{{cfg.postgres.dbname}}"
{{/with}}
{{else ~}}
export CONCOURSE_POSTGRES_HOST="{{cfg.postgres.host_ip}}"
export CONCOURSE_POSTGRES_USER="{{cfg.postgres.username}}"
export CONCOURSE_POSTGRES_PASSWORD="{{cfg.postgres.password}}"
{{/if ~}}

export CONCOURSE_POSTGRES_DATABASE="{{cfg.postgres.dbname}}"
