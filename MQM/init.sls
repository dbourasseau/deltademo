/home/ehg/mqm/Monitor64:
  file.managed:
    - user: root
    - group: root
    - mode: 744
    - source: salt://MQM/Monitor64
    - makedirs: true
/etc/init.d/MQM:
  file.managed:
    - user: root
    - group: root
    - mode: 755
    - source: salt://MQM/MQM
    - makedirs: true

#update-rc.d:
#  cmd.run:
 #   - name: sudo update-rc.d MQM defaults

service MQM:
  cmd.run:
    - name: service MQM restart
    - cwd: /


MQM:
  service.running: 
    - cwd: /home/ehg/mqm
    - require:
      - file: /home/ehg/mqm/Monitor64
