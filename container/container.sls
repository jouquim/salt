apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D:
  cmd.run

etc/apt/sources.list.d/docker.list
  file.managed:
    - source: salt://files/etc/apt/sources.list.d/docker.list
      - user: root
      - group: root
      - mode: 644

apt-get update
  cmd.run
    
docker-engine:
  pkg.installed: 
  service.running:
    - enable: True
    - require:
      - pkg: docker
