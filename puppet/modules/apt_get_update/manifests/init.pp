class apt_get_update {
  exec { "apt-get update":
    command => "/usr/bin/apt-get update"
  }
}