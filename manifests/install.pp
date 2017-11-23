class corp104_snmp::install inherits corp104_snmp {
  package { 'snmp':
    ensure => present,
    name   => $corp104_snmp::package_name,
  }
}
