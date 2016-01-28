nagios3:
  pkg.installed: []
  service.running:
    - enable: True
    - require:
      - pkg: nagios3

nagios-nrpe-plugin:
  pkg.installed:
    - pkg: nagios-nrpe-plugin

/etc/nagios3/conf.d
- source: salt://nagios/files/etc/nagios3/conf.d
    - user: root
    - group: root
