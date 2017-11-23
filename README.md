# puppet module corp104_snmp
[![Build Status](https://travis-ci.org/104corp/puppet-corp104_snmp.svg?branch=master)](https://travis-ci.org/104corp/puppet-corp104_snmp)


#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with corp104_snmp](#setup)
    * [Beginning with corp104_snmp](#beginning-with-corp104_snmp)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description

The corp104_snmp module installs, configures, and manages the corp104_snmp service across a range of operating systems and distributions.

## Setup

### Beginning with corp104_snmp

`include '::corp104_snmp'` is enough to get you up and running.

## Usage

All parameters for the ntp module are contained within the main `::corp104_snmp` class, so for any function of the module, set the options you want. See the common usages below for examples.

### Install and enable corp104_snmp

```puppet
include '::corp104_snmp'
```

### Modify community password

```puppet
class { 'corp104_snmp':
  com2sec_community  => 'pass2snmp',
  com2sec6_community => 'pass2snmp'
}
```

## Reference

### Classes

#### Public classes

* corp104_snmp: Main class, includes all other classes.

#### Private classes

* corp104_snmp::install Handles the packages.
* corp104_snmp::config Handles the config.
* corp104_snmp::service Handles the service.


## Limitations

This module cannot guarantee installation of corp104_snmp versions that are not available on  platform repositories.

This module is officially [supported](https://forge.puppetlabs.com/supported) for the following Java versions and platforms:

## Development

Puppet modules on the Puppet Forge are open projects, and community contributions are essential for keeping them great. Please follow our guidelines when contributing changes.

For more information, see our [module contribution guide.](https://docs.puppetlabs.com/forge/contributing.html)

### Contributors

To see who's already involved, see the [list of contributors.](https://github.com/104corp/puppet-corp104_snmp/graphs/contributors)
