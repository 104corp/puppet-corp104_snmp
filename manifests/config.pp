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

  # fix daemon directory not found.
  if $facts['os']['family'] == 'Debian' {
    file { 'snmpd_daemon_path':
      ensure => directory,
      path   => '/etc/default',
      mode   => '0755',
    }
  }
  elsif $facts['os']['family'] == 'RedHat' {
    file { 'snmpd_daemon_path':
      ensure => directory,
      path   => '/etc/sysconfig',
      mode   => '0755',
    }
  }

  if $daemon_opts {
    file { 'snmpd_daemon_file':
      ensure  => file,
      path    => $daemon_config,
      mode   => '0644',
      content => template("${module_name}/snmpd.erb"),
      require => File['snmpd_daemon_path'],
    }
  }
}
