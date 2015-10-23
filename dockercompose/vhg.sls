dbourasseau/mediahomedelta:
  docker.pulled:
    - tag: latest
    - require:
      - sls: docker

mysql:
  docker.pulled:
    - tag: 5.6
    - require:
      - sls: docker

dngroup/media-home-worker:
  docker.pulled:
    - tag: latest
    - require:
      - sls: docker

dbourasseau/squid:
  docker.pulled:
    - tag: latest
    - require:
      - sls: docker
