class apache::params {

  $listen_port = '80'
  $virtualhost_port = '80'
  $version = '2.4.*'
  $package_name = 'apache2'
  $provider = 'apt'
  $service_name = 'apache2'
  $ports_path = '/etc/apache2/ports.conf'
  $virtualhost_path = '/etc/apache2/sites-available/000-default.conf'

}
