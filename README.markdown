#couchpotato

[![Build Status](https://travis-ci.org/DexterTheDragon/puppet-couchpotato.png?branch=master)](https://travis-ci.org/DexterTheDragon/puppet-couchpotato)

####Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with [couchpotato]](#setup)
    * [What [couchpotato] affects](#what-couchpotato-affects)
    * [Beginning with [couchpotato]](#beginning-with-couchpotato)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

##Overview

Puppet module for installing couchpotato

##Module Description

Installs couchpotato from source, and configures it to run

##Setup

###What [couchpotato] affects

* Installs couchpotato from git
* Creates the init file
* Creates the `/etc/default/couchpotato` file

###Beginning with [couchpotato]

```
class { 'couchpotato': }
```

##Usage

Available parameters:

```
class { 'couchpotato':
  git_repo          => # repo location, should never need to change
  base_dir          => # location to install to, default: /opt
  user              => # owner of couchpotato files, default: couchpotato
  group             => # group of couchpotato files, default: couchpotato
  # /etc/default/couchpotato settings
  run_as            => # user to run couchpotato as, default: couchpotato
  app_path          => # location of couchpotato.py, default: /opt/couchpotato
  data_dir          => # location of couchpotato.db, cache, logs, default: /var/couchpotato
  pid_file          => # location of couchpotato.pid, default: /var/run/couchpotato.pid
  python_bin        => # location of the python binary, default: /usr/bin/python
  extra_daemon_opts => # extra cli option for couchpotato, i.e. " --config_file=/home/couchpotato/couchpotato.ini"
  extra_ssd_opts    => # extra start-stop-daemon option like " --group=users"
}
```

##Reference

Classes
* couchpotato

##Limitations

Only tested on Ubuntu currently, but should work on RedHat

##Development

* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a future version unintentionally.
* Commit your changes
* Send me a pull request. Bonus points for topic branches.

##Release Notes

See the [CHANGELOG](https://github.com/DexterTheDragon/puppet-couchpotato/blob/master/CHANGELOG)
