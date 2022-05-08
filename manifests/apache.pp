node 'ip-10-0-1-233.eu-central-1.compute.internal' {

  include apache

  $listen_port = '8080'
  $virtualhost_port = '8080'

  file { '/etc/apache2/ports.conf':
    path    => '/etc/apache2/ports.conf',
    ensure  => 'file',
    content => template ('apache/ports.conf.erb'),
  }
  file { '/etc/apache2/sites-available/000-default.conf':
    path    => '/etc/apache2/sites-available/000-default.conf',
    ensure  => 'file',
    content => template ('apache/000-default.conf.erb'),
  }
  
}
