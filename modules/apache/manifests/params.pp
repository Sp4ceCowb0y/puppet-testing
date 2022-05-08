$listen_port = '80'
$virtualhost_port = '80'

case $::os['family'] {
  'Debian': {
      $version = '2.4.*'
      $package_name = 'apache2'
      $provider = 'apt'
      $ports_path = '/etc/apache2/ports.conf'
      $virtualhost_path = '/etc/apache2/sites-available/000-default.conf'
  }
  'windows': {

  }
  'osx': {

  }
}