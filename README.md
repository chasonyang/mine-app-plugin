
emq_plugin_template
===================

This is a template plugin for the EMQ broker.

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

<<<<<<< HEAD
Build steps
-----------------

首先参考 [emqttd](https://github.com/emqtt/emqttd) Build From Source

The EMQ broker requires Erlang/OTP R21+ to build since 2.1 release.

```
git clone https://github.com/emqtt/emq-relx.git

cd emq-relx && make

cd _build\emqx\rel\emqx
bin\emqx console
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


=======
>>>>>>> parent of 33c5097... add steps
License
-------

Apache License Version 2.0
