class apache (

  $status = installed

)
{

  package { 'apache2':
    ensure => $status
  }

}
