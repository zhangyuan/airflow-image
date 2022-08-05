FROM apache/airflow:2.0.2-python3.8
COPY docker-entrypoint.sh /
ENTRYPOINT ["/usr/bin/dumb-init", "--", "/docker-entrypoint.sh"]
