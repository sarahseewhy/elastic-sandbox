# == Class: elastic
#
# Packages all elastic::* subclasses.
#
class elastic {
  include elastic::repos::elasticsearch
  include elastic::elasticsearch
  include elastic::dependencies::java
  include elastic::dependencies::epel
  include elastic::dependencies::nginx
}