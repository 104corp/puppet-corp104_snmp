class corp104_snmp::config inherits corp104_snmp {
  File {
    owner => 'root',
    group => 'root',
    mode  => '0600',
    require => Package['snmp'],
  }

  file { $corp104_snmp::snmp_config:
    ensure  => file,
    content => template("${module_name}/snmpd.conf.erb"),
    notify  => Service['snmp'],
  }
}
