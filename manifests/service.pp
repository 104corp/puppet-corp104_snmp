class corp104_snmp::service inherits corp104_snmp {
  service { 'snmpd':
    ensure => $corp104_snmp::service_ensure,
    name   => $corp104_snmp::service_name,
  }
}
