ARG FLUENTD_VERSION

FROM fluentd:${FLUENTD_VERSION}

USER root
RUN ["gem", "install", "fluent-plugin-elasticsearch", "--no-document", "--version", "5.1.4"]
USER fluent