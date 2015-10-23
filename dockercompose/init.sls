docker-compose stop:
  cmd.run:
    - name: docker-compose stop
    - cwd: /home/ehg/mediahome/compose/

docker-compose rm:
  cmd.run:
    - name: docker-compose rm -f
    - cwd: /home/ehg/mediahome/compose/


docker-compose up:
  cmd.run:
    - name: docker-compose up -d
    - cwd: /home/ehg/mediahome/compose/


