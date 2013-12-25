
class rpmfusion (
  $freerpm = $rpmfusion::params::free_rpm,
  $nonfreerpm = $rpmfusion::params::nonfree_rpm,

) inherits rpmfusion::params {

  Exec {
    path      => [ '/bin', '/usr/bin' ],
    logoutput => 'on_failure',
  }

  exec { 'rpmfusion_free':
    command =>  "yum -d0 -y install $freerpm",
    unless  => 'rpm -q rpmfusion-free-release &> /dev/null',
  }

  exec { 'rpmfusion_nonfree':
    command =>  "yum -d0 -y install $nonfreerpm",
    unless  => 'rpm -q rpmfusion-nonfree-release &> /dev/null',
    require => Exec['rpmfusion_free'],
  }


}
