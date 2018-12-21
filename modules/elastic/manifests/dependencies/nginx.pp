# A description of what this class does
# Installs nginx
#
# @summary A short summary of the purpose of this class
# Nginx must be installed on the sever as a reverse proxy for Kibana
# which normally runs on localhost.
#
# @example
#   include elastic::dependencies::nginx
class elastic::dependencies::nginx {
  package { 'nginx':
    ensure  => 'latest',
  }
}
