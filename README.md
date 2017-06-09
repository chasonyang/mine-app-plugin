
mine_app_plugin
===================

This is a modified template plugin for the EMQ broker.

Plugin Config
-------------

Each plugin should have a 'etc/{plugin_name}.conf|config' file to store application config.

added model
----------------------

```
 [mysql-otp](https://github.com/mysql-otp/mysql-otp)
 [ecpool](https://github.com/emqtt/ecpool)
 [parse json:jsone](https://github.com/sile/jsone)
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
git clone https://github.com/emqtt/emq-relx.git

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


License
-------

Apache License Version 2.0
