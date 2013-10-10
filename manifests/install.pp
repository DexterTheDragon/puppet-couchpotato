# == Class couchpotato::intall
#
class couchpotato::install {
  include couchpotato::params

  vcsrepo { $couchpotato::params::package_name:
    ensure   => latest,
    provider => git,
    source   => $couchpotato::git_repo,
    path     => "${couchpotato::base_dir}/couchpotato",
    owner    => $couchpotato::user,
    group    => $couchpotato::group,
  }

  file { '/etc/init.d/couchpotato':
    ensure  => present,
    source  => "${couchpotato::base_dir}/couchpotato/init/${couchpotato::params::init_file}",
    mode    => '0755',
    require => Vcsrepo[$couchpotato::params::package_name],
  }
}
