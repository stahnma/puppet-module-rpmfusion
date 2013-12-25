

class rpmfusion::params {

  if $::operatingsystem == "Fedora" {
    if $::operatingsystemrelease == '20' {
      $free_rpm = 'http://download1.rpmfusion.org/free/fedora/releases/20/Everything/x86_64/os/rpmfusion-free-release-20-1.noarch.rpm'
      $nonfree_rpm = 'http://download1.rpmfusion.org/nonfree/fedora/releases/20/Everything/x86_64/os/rpmfusion-nonfree-release-20-1.noarch.rpm'
    }

    if $::operatingsystemrelease == '19' {
      $free_rpm = 'http://download1.rpmfusion.org/free/fedora/releases/19/Everything/x86_64/os/rpmfusion-free-release-19-1.noarch.rpm'
      $nonfree_rpm = 'http://download1.rpmfusion.org/nonfree/fedora/releases/19/Everything/x86_64/os/rpmfusion-nonfree-release-19-1.noarch.rpm'
    }

    if $::operatingsystemrelease == '18' {
      $free_rpm = 'http://download1.rpmfusion.org/free/fedora/releases/20/Everything/x86_64/os/rpmfusion-free-release-18-1.noarch.rpm'
      $nonfree_rpm = 'http://download1.rpmfusion.org/nonfree/fedora/releases/20/Everything/x86_64/os/rpmfusion-nonfree-release-18-1.noarch.rpm'
    }
  }


}
