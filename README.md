# remote_syslog2

## Overview

Use this Puppet module to manage your remote_syslog2 install and which files
should be sent to Papertrail's servers

## Module Description

[remote_syslog2](https://github.com/papertrail/remote_syslog2) is written in Go and has less dependecies than [remote_syslog](https://github.com/papertrail/remote_syslog). This module will install a package file from papertrail's github releases and configure the YAML file.

## Usage

Get $host and $port for your log destination from the Papertrail website.
```
class {'remote_syslog2':
   host => 'logsX.papertrailapp.com',
   port => '11111',
   files => ["/var/log/nginx/error.log", "/var/log/syslog", "/var/log/auth.log"]
}
```

Pay attention that the service name is ***remote_syslog*** (not ***remote_syslog2***) in case you want to notify it.
