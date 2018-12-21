# == Class: elastic
#
# Packages all elastic::* subclasses.
#
class elastic {
  include elastic::elastic_stack
  include elastic::dependencies::java
  include elastic::dependencies::epel
  include elastic::dependencies::nginx
}