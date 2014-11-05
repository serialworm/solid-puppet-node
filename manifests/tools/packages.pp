
class tools::packages {

  $tools = [
    'git-core',
    'curl',
    'build-essential',
    'dkms',
    'vim'
  ]
  package { $tools: ensure => 'installed' }

}
