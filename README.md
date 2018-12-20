# elastic-sandbox
Project to experiment with provisioning elastic, beats, and kibana.

## Goals
1. Set up docker centOS 7 image which can apply puppet.
2. Provision docker image with elastic_stack
3. Provision kibana
4. Provision beats

## Experiment 1

Attempt the simplest possible steps in order to get things running.

Provision elastic stack locally without using PDK. This experiment will include more manual steps which can be automated at a later date.

*RESULT*
The simplest steps were manual installs. This worked fine, however my end target is a CentOS environment which makes any installs on a mac OS moot.

## Experiment 2

Set up a CentOS 7 environment using docker.

## Resources

This project is based on the following resources:

- [Elasticsearch Reference](https://www.elastic.co/guide/en/elasticsearch/reference/current/index.html)
- [Digital Ocean, "How to install elasticsearch..."](https://www.digitalocean.com/community/tutorials/how-to-install-elasticsearch-logstash-and-kibana-elastic-stack-on-centos-7)
- [Logz.io, "The complete guide to the Elk Stack 2018](https://logz.io/learn/complete-guide-elk-stack/#intro)