FROM debian

COPY src/execute.sh /opt/src/
COPY src/prepare.sh /opt/src/
COPY src/check_syslog.sh /usr/bin/
COPY src/syslog /var/log/

RUN cd /opt/src/; chmod 777 prepare.sh; ./prepare.sh;

COPY flag/user_flag.txt /home/webmaster/
COPY flag/root_flag.txt /root/
COPY src/notes.txt /home/webmaster/

RUN chmod 777 /home/webmaster/user_flag.txt /home/webmaster/notes.txt;

#Puerto 22

CMD ["bash"]
ENTRYPOINT ["/opt/src/execute.sh"]