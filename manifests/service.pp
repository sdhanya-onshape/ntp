class ntp::service {
  service { 'ntp':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
    require    => Package['ntp'],
  }
}
