# == Class: elastic
#
# Packages all elastic::* subclasses.
#
class elastic {
  include elastic::elastic_stack
  include elastic::dependencies::java
}