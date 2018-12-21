# Installs the latest version of Java required by elastic stack
#
# @example
#   include elastic::dependencies::java
class elastic::dependencies::java {
  package { 'java-1.8.0-openjdk':
    ensure  => latest,
  }
}
