class ntp::config {
  file { '/etc/ntp.conf':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('ntp/ntp.erb'),
  }
}
