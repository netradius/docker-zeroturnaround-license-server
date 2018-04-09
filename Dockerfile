FROM java:8-alpine
RUN apk add --update bash wget
RUN wget https://dl.zeroturnaround.com//license-server/releases/license-server-3.5.1.zip && \
	unzip license-server-3.5.1.zip && \
	rm license-server-3.5.1.zip
EXPOSE 9000
CMD /bin/bash -c "/license-server/bin/license-server.sh run"
