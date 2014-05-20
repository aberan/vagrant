exec { 'apt-get update':
  path => '/usr/bin',
}

package { 'vim':
  ensure => present,
}

file { '/var/www/':
  ensure => 'directory',
}

file { '/var/www/app':
  ensure  => 'link',
  target  => '/app',
}
