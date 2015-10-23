docker stop:
  cmd.run:
    - name: docker stop $(docker ps -a -q)
    - cwd: /




