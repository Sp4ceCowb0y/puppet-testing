class apache (

  $listen_port = $::apache::params::listen_port,
  $virtualhost_port = $::apache::params::virtualhost_port,
  $version = $::apache::params::version,
  $package_name = $::apache::params::package_name,
  $provider = $::apache::params::provider,
  $ports_path = $::apache::params::ports_path,
  $virtualhost_path = $::apache::params::virtualhost_path

)
{

  package { 'apache':
    ensure   => $version,
    package  => $package_name,
    provider => $provider
  }

  service { 'apache':
    ensure    => running,
    enable    => true,
    subscribe => [File['ports.conf'],File['000-default.conf']],
  }

  file { 'ports.conf':
    ensure  => 'file',
    path    => $ports_path,
    content => template ('apache/ports.conf.erb'),
    require => Package['apache']
  }

  file { '000-default.conf':
    ensure  => 'file',
    path    => $virtualhost_path,
    content => template ('apache/000-default.conf.erb'),
    require => Package['apache']
  }

}

# Comm
















