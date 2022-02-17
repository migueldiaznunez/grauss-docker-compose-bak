# Grauss on Docker Compose

## Introduction

In this project we want to demonstrate the grauss project, which lays the foundation that a devops team would need.

## Requirements

Review this repo [grauss-vagrant](https://github.com/migueldiaznunez/grauss-vagrant)

Docker requirements:

- CPU: 2
- Memory: 8GB

### Docker Daemon

Change the docker daemon:

```
{
  "metrics-addr" : "127.0.0.1:9323",
  "experimental" : true
}
```

## Install

Add to /etc/hosts file:
```
127.0.0.1 alertmanager.grauss.local grafana.grauss.local jenkins.grauss.local kibana.grauss.local prometheus-fed.grauss.local prometheus.grauss.local vault.grauss.local consul.grauss.local keycloak.grauss.local
```

Use Docker Compose to install this solution

```
$ docker-compose up -d
```

## Diagram

![Diagram](docs/images/diagram.drawio.svg)

### Access
Urls:

| App | URL | User | Pass |
|-----|-----|------|------|
|Kibana|[http://kibana.grauss.local](http://kibana.grauss.local)| elastic | changeme |
|Grafana|[http://grafana.grauss.local](http://grafana.grauss.local)| admin |admin|
|Prometheus|[http://prometheus.grauss.local](http://prometheus.grauss.local)| | |
|Prometheus Federated|[http://prometheus-fed.grauss.local](http://prometheus-fed.grauss.local) | |
|Alertmanager|[http://alertmanager.grauss.local](http://alertmanager.grauss.local) | |
|Jenkins|[http://jenkins.grauss.local](http://jenkins.grauss.local)| | |
|Vault|[http://vault.grauss.local](http://vault.grauss.local)| | |
|Consul|[http://consul.grauss.local](http://consul.grauss.local)| | |
|Keycloak|[http://keycloak.grauss.local](http://keycloak.grauss.local)| admin | Pa55w0rd |

#### Jenkins
To get the pass:

```
$ docker-compose logs -f jenkins
```

#### Gitlab
To get the pass:

```
docker exec -it gitlab grep 'Password:' /etc/gitlab/initial_root_password
```

### Docker Images

* [Nginx](https://hub.docker.com/_/nginx)
* [ElasticSearch](https://hub.docker.com/_/elasticsearch)
* [Kibana](https://hub.docker.com/_/kibana)
* [Logstash](https://hub.docker.com/_/logstash)
* [Filebeat](https://hub.docker.com/r/elastic/filebeat)
* [Grafana](https://hub.docker.com/r/grafana/grafana)
* [Prometheus](https://hub.docker.com/r/prom/prometheus)
* [Alertmanager](https://hub.docker.com/r/prom/alertmanager)
* [Jenkins](https://hub.docker.com/r/jenkins/jenkins)
* [Jenkins Agent](https://hub.docker.com/r/jenkins/inbound-agent)
* [Fluentd](https://hub.docker.com/_/fluentd)
* [Vault](https://hub.docker.com/_/vault)
* [Consul](https://hub.docker.com/_/consul)
* [Blackbox-exporter](https://hub.docker.com/r/prom/blackbox-exporter/)
* [Keycloak](https://hub.docker.com/r/jboss/keycloak/)