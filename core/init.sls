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

add info box:
  cmd.run:
    - name: echo 'boxID='$(uname -n) >> box.properties
    - cwd: /home/ehg/mediahome/config/

add info box2:
  cmd.run:
    {% if grains['nodename'] != 'delta-ehg10' %}
    - shell: /bin/bash
    - name: echo 'publicAddr=http://213.140.209.117:100'${HOSTNAME:9:1} >> box.properties
    {% else %}
    - name: echo 'publicAddr=http://213.140.209.117:1010' >> box.properties
    {% endif %}
    - cwd: /home/ehg/mediahome/config/

