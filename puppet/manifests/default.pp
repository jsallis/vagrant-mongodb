Exec {
  path => ["/usr/sbin", "/usr/bin", "/sbin", "/bin"]
}

include apt_get_update
include mongodb