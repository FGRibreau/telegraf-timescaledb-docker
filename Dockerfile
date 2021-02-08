FROM telegraf:1.17.2

RUN wget https://telegrafreleases.blob.core.windows.net/linux/telegraf && \
	mv telegraf /usr/bin/telegraf && \
	chmod a+x /usr/bin/telegraf

ENV TELEGRAF_VERSION=1.17.2

EXPOSE 8125/udp 8092/udp 8094
ENTRYPOINT ["/entrypoint.sh"]
CMD ["telegraf"]
