# Grauss on Docker Compose

## Introduction

In this project we want to demonstrate the grauss project, which lays the foundation that a devops team would need.

## Requirements

Docker requirements:

- CPU: <2
- Memory: <8GB

### Docker Daemon

Change the docker daemon:

```
{
  "metrics-addr" : "127.0.0.1:9323",
  "experimental" : true
}
```

## Install

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
|Kibana|[http://localhost:5601](http://localhost:5601)| elastic | changeme |
|Grafana|[http://localhost:9000](http://localhost:9000)| admin |admin|
|Prometheus|[http://localhost:9090](http://localhost:9090)| | |
|Prometheus Federated|[http://localhost:9091](http://localhost:9091) | |
|Alertmanager|[http://localhost:9093](http://localhost:9093) | |
|Checkmk|[http://localhost:8081](http://localhost:8081)| | |
|Jenkins|[http://localhost:8080](http://localhost:8080)| | |

#### Jenkins
To get the pass:

```
$ docker-compose logs -f jenkins
```

#### Checkmk

To get the pass:

```
$ docker-compose logs -f checkmk
```

### Docker Images

* [ElasticSearch](https://hub.docker.com/_/elasticsearch)
* [Kibana](https://hub.docker.com/_/kibana)
* [Logstash](https://hub.docker.com/_/logstash)
* [Filebeat](https://hub.docker.com/r/elastic/filebeat)
* [Grafana](https://hub.docker.com/r/grafana/grafana)
* [Prometheus](https://hub.docker.com/r/prom/prometheus)
* [Alertmanager](https://hub.docker.com/r/prom/alertmanager)
* [Checkmk](https://hub.docker.com/r/checkmk/check-mk-raw)
* [Jenkins](https://hub.docker.com/r/jenkins/jenkins)
* [Fluentd](https://hub.docker.com/_/fluentd)
