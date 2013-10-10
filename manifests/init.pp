# == Class: couchpotato
#
# Full description of class couchpotato here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class couchpotato (
  $git_repo = 'git://github.com/RuudBurger/CouchPotatoServer.git',
  $base_dir = '/opt',
  $user = 'couchpotato',
  $group = 'couchpotato',

  $run_as = undef,
  $app_path = undef,
  $data_dir = undef,
  $pid_file = undef,
  $python_bin = undef,
  $extra_daemon_opts = undef,
  $extra_ssd_opts = undef,

) inherits couchpotato::params {

  # validate parameters here

  class { 'couchpotato::install': } ->
  class { 'couchpotato::config': } ~>
  class { 'couchpotato::service': } ->
  Class['couchpotato']
}
