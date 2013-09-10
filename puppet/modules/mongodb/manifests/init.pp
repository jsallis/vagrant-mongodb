class mongodb {
  exec { "apt-key":
    command => "apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10",
    before => Exec["apt-get update"]
  }

  file { "/etc/apt/sources.list.d/10gen.list":
    owner => root,
    group => root,
    mode => 644,
    source => "puppet:///modules/mongodb/10gen.list",
    before => Exec["apt-get update"]
  }

  package { "mongodb-10gen":
    ensure => present,
    require => Exec["apt-get update"]
  }

  service { "mongodb":
    ensure => running,
    require => Package["mongodb-10gen"]
  }
}