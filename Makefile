PROJECT = mine_app_plugin
PROJECT_DESCRIPTION = Mine App Plugin
PROJECT_VERSION = 2.2

DEPS = mysql ecpool jsone

dep_mysql  = git https://github.com/mysql-otp/mysql-otp 1.2.0
dep_ecpool = git https://github.com/emqtt/ecpool master
dep_jsone = git git://github.com/sile/jsone master

BUILD_DEPS = emqttd cuttlefish
dep_emqttd = git https://github.com/emqtt/emqttd master
dep_cuttlefish = git https://github.com/emqtt/cuttlefish

NO_AUTOPATCH = cuttlefish

COVER = true

include erlang.mk

app:: rebar.config

app.config::
	./deps/cuttlefish/cuttlefish -l info -e etc/ -c etc/mine_app_plugin.conf -i priv/mine_app_plugin.schema -d data
