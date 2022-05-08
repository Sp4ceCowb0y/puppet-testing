class apache (

  $status = installed,
  $listen_port = '80',
  $virtualhost_port = '80'

)
{

  package { 'apache2':
    ensure => $status
  }

  file { '/etc/apache2/ports.conf':
    ensure  => 'file',
    path    => '/etc/apache2/ports.conf',
    content => template ('apache/ports.conf.erb'),
  }
  file { '/etc/apache2/sites-available/000-default.conf':
    ensure  => 'file',
    path    => '/etc/apache2/sites-available/000-default.conf',
    content => template ('apache/000-default.conf.erb'),
  }

}
