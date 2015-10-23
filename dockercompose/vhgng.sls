box:
  dockerng.image_present:
    - image: dbourasseau/mediahomedelta
    - ports:
      - "9998:9998"
    - volumes:
      - ~/mediahome/data:/var/www/html
      - /tmp:/tmp
      - ./:/etc/mediahome
    - links:
      - db
      - worker
      - squid

db:
  dockerng.image_present:
    - image: mysql:5.6
    - environment:
      - MYSQL_ROOT_PASSWORD=root
      - MYSQL_DATABASE=mediahome
      - MYSQL_USER=mediahome
      - MYSQL_PASSWORD=mediahome
    - volumes:
      - ~/mediahome/logs:/var/log/mysql
worker:
    dockerng.image_present:
    - image: dngroup/media-home-worker
    - volumes:
      - ~/mediahome/data:/var/www/html
      - /tmp:/tmp
squid:
    dockerng.image_present:
    - image: dbourasseau/squid
    - ports:
      - "8055:80"
      - "3128:3128"
    - volumes:
      - /srv/docker/squid/cache:/var/spool/squid3
