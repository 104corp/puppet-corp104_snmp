# Class: corp104_snmp
# ===========================
#
# Full description of class corp104_snmp here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'corp104_snmp':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2017 Your name here, unless otherwise noted.
#
class corp104_snmp (
  String $package_name,
  String $service_name,
  String $service_ensure,
  String $snmp_config,
  Array $agentaddress,
  String $rocommunity_pass,
  String $rocommunity_network,
  String $rocommunity6_pass,
  String $rocommunity6_network,
  String $com2sec_name,
  String $com2sec_source,
  String $com2sec_community,
  String $com2sec6_name,
  String $com2sec6_source,
  String $com2sec6_community,
  Array $groups,
  Array $views,
  Array $access,
  String $syslocation,
  String $syscontact,
  String $sysservices,
  Optional[Array] $pass,
  Optional[Array] $extend,
){
  contain corp104_snmp::install
  contain corp104_snmp::config
  contain corp104_snmp::service

  Class['::corp104_snmp::install']
  -> Class['::corp104_snmp::config']
  ~> Class['::corp104_snmp::service']
}
