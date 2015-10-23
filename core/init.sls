/home/ehg/mediahome/compose/docker-compose.yml:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - source: salt://core/docker-compose.yml
    - makedirs: true

/home/ehg/mediahome/config/box.properties:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - source: salt://core/box.properties
    - makedirs: true
