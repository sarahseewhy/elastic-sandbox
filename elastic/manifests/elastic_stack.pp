# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include elastic::elastic_stack
class elastic::elastic_stack {
  file { '/tmp/elastic.txt':
    ensure => 'present',
    content => "This is an elastic search file \n"
  }
}
