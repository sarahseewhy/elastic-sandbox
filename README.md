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

### Result

The simplest steps were manual installs. This worked fine, however my end target is a CentOS environment which makes any installs on a mac OS moot.

## Experiment 2

Set up a CentOS 7 environment using docker.

### Result

Successful. I borrowed elements of an open source project made by Unruly to get a smoke test environment up and running as well as a puppet linter.

Please see [unruly-puppet](https://github.com/unruly/unruly-puppet) for details.

## Experiment 3

Provision the CentOS 7 docker image with the required dependencies and tools to get elasticsearch up and running.

### Lessons/Gotchas

I followed the Digital Ocean tutorial mentioned in [Resources](#Resources). 

However, I stopped because there were a couple of provisioning choices I wasn't keen on: 

- an `exec` to install the Elasticsearch GPG key which was necessary for the `elastisearch.repo`.
- Elasticsearch must be installed from the `elasticsearch.repo` (understandable). 
- Elasticsearch requires Java to be set in the $PATH; again, not a huge hurdle but it began to lead down a path of more granular configuration than a spike warrants.

### Results

This approach did not work. It required heavier provisioning than I believe is necessary, especially if the elastic modules available on Puppet Forge could accomplish much of the basic configuration (e.g., Java, the `elasticsearch.repo`).

## Experiment 4

Use the [elastic modules](https://forge.puppet.com/elastic) on Puppet Forge to provision the CentOS 7 docker image.

## Resources

This project is based on the following resources:

- [Elasticsearch Reference](https://www.elastic.co/guide/en/elasticsearch/reference/current/index.html)
- [Digital Ocean, "How to install elasticsearch..."](https://www.digitalocean.com/community/tutorials/how-to-install-elasticsearch-logstash-and-kibana-elastic-stack-on-centos-7)
- [Logz.io, "The complete guide to the Elk Stack 2018](https://logz.io/learn/complete-guide-elk-stack/#intro)