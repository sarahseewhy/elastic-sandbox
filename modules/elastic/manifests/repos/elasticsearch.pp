# A description of what this class does
# Configures the official elasticsearch repo in yum.repos.d
#
# @summary A short summary of the purpose of this class
# "The Elastic Stack components are not available through the package manager by default,
# but you can install them with yum by adding Elastic's package repository"
# - Digital Ocean tutorial. See README.md
#
# @example
#   include elastic::repos::elasticsearch
class elastic::repos::elasticsearch {
  exec { 'install-gpg-key':
    command => '/usr/bin/rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch'
  }

  file { '/etc/yum.repos.d/elasticsearch.repo':
    ensure  => 'present',
    mode    => '0644',
    owner   => 'root',
    group   => 'root',
    content => file('elastic/repos/elasticsearch.repo')
  }
}
