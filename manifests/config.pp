# == Class couchpotato::config
#
# This class is called from couchpotato
#
class couchpotato::config {
  case $::osfamily {
    'Debian': {
      file { '/etc/default/couchpotato':
        content => template('couchpotato/default.erb'),
      }
    }
    'RedHat', 'Amazon': {
    }
    default: {
    }
  }
}
