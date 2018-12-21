# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include elastic::elasticsearch
class elastic::elasticsearch {
  package { 'elasticsearch':
    ensure   => 'latest',
  }
}
