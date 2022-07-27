FROM aquabotwa/sanuwa-official:md-beta
 
RUN git clone https://github.com/khaxdher/AQUABOT-MD /root/aquabot
WORKDIR /root/aquabot/
ENV TZ=Europe/Istanbul

CMD ["node", "bot.js"]
