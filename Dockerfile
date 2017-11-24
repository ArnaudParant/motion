FROM debian:stretch

RUN apt-get update && apt-get install -y motion

RUN mkdir -p /motion
ADD motion.conf /etc/motion/motion.conf
ADD docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["./docker-entrypoint.sh"]
