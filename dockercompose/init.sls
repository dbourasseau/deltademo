docker-compose stop:
  cmd.run:
    - name: docker stop $(docker ps -a -q)
    - cwd: /home/ehg/mediahome/compose/

docker-compose rm:
  cmd.run:
    - name: docker-compose rm -f
    - cwd: /home/ehg/mediahome/compose/

docker-compose pull:
  cmd.run:
    - name: docker-compose pull
    - cwd: /home/ehg/mediahome/compose/

docker-compose up:
  cmd.run:
    - name: docker-compose up -d
    - cwd: /home/ehg/mediahome/compose/


