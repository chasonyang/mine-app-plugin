
emq_plugin_template
===================

This is a template plugin for the EMQ broker.
only for EMQ 2.3.x,not emqx 3 or later

Plugin Config
-------------

Each plugin should have a 'etc/{plugin_name}.conf|config' file to store application config.

Authentication and ACL
----------------------

```
emqttd_access_control:register_mod(auth, ?MODULE, Env).
emqttd_access_control:register_mod(acl, ?MODULE, Env).
```

Plugin and Hooks
-----------------

[Plugin Design](http://docs.emqtt.com/en/latest/design.html#plugin-design)

[Hooks Design](http://docs.emqtt.com/en/latest/design.html#hooks-design)

Build steps
-----------------

首先参考 [emqttd](https://github.com/emqtt/emqttd) Build From Source

The EMQ broker requires Erlang/OTP R19+ to build since 2.1 release.

```
git clone --branch v2.3.11 https://github.com/emqtt/emq-relx.git

cd emq-relx && make

cd _rel/emqttd && ./bin/emqttd console
```

编译成功后，修改makefile

```
DEPS += mine_app_plugin

dep_mine_app_plugin = git https://github.com/chasonyang/mine-app-plugin master
```

relx.config文件中添加

```
{mine_app_plugin, load},
```

Apache License Version 2.0
