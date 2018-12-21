# A description of what this class does
# Installs epel
#
# @summary A short summary of the purpose of this class
# Epel is required to get nginx.
#
# @example
#   include elastic::dependencies::epel
class elastic::dependencies::epel {
  package { 'epel-release':
    ensure  => 'latest',
  }
}
