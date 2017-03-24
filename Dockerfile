FROM vfarcic/docker-flow-proxy
MAINTAINER 	Wu Mi Zhong<zwmlzaq@gmail.com>

ENV DEFAULT_PORTS="443:ssl,444:ssl" 

EXPOSE 443
EXPOSE 444
EXPOSE 8080

COPY ssh-key/server.crt /certs/server.crt
COPY ssh-key/server.nopwd.key /certs/server.key

CMD ["docker-flow-proxy", "server"]
