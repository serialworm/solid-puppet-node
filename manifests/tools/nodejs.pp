
class tools::nodejs {

  include apt
  apt::ppa { 'ppa:chris-lea/node.js': }

  package { 'nodejs':
    ensure => 'latest',
    require => Apt::Ppa['ppa:chris-lea/node.js']
  }

  package { 'grunt-cli':
    ensure => 'installed',
    provider => 'npm'
  }

  package { 'pm2':
    ensure => 'installed',
    provider => 'npm'
  }

  Package['nodejs']
    -> Package['grunt-cli']
    -> Package['pm2']
}
