FROM debian

COPY src/ /opt/src/
COPY src/ /opt/src/

RUN cd /opt/src/; chmod 777 prepare.sh; ./prepare.sh;

EXPOSE 22

CMD ["bash"]
ENTRYPOINT ["/opt/src/execute.sh"]