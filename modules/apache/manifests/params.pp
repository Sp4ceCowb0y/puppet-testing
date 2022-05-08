class apache::params {

  $listen_port = '80'
  $virtualhost_port = '80'

  case $facts['os']['family'] {
    'Debian': {
        $package_name = 'apache2'
        $version = '2.4.*'
        $provider = 'apt'
        $ports_path = '/etc/apache2/ports.conf'
        $virtualhost_path = '/etc/apache2/sites-available/000-default.conf'
    }
    'windows': {

    }
    'osx': {

    }
    default: {
        $package_name = 'apache2'
        $version = '2.4.*'
        $provider = 'apt'
        $ports_path = undef
        $virtualhost_path = undef
    }
  }

}
