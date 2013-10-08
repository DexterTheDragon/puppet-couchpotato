# == Class couchpotato::params
#
# This class is meant to be called from couchpotato
# It sets variables according to platform
#
class couchpotato::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'couchpotato'
      $service_name = 'couchpotato'
    }
    'RedHat', 'Amazon': {
      $package_name = 'couchpotato'
      $service_name = 'couchpotato'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
