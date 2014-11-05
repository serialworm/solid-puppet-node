
class server::nginx {

  include apt
  apt::ppa { 'ppa:nginx/stable': }

  package { 'nginx':
    ensure => 'installed',
    require => Apt::Ppa['ppa:nginx/stable']
  }

  service { 'nginx':
    enable => true,
    ensure => 'running',
    require => Package['nginx']
  }

  Package['nginx']
    ~> Service['nginx']
}
