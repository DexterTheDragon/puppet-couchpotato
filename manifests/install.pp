# == Class couchpotato::intall
#
class couchpotato::install {
  include couchpotato::params

  package { $couchpotato::params::package_name:
    ensure => present,
  }
}
