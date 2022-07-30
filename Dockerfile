FROM quay.io/khadher/md-kdr-beta
 
RUN git clone https://github.com/KH4DHER/WHATSAPP-BOT-MD-2.0 /root/khadherbot
WORKDIR /root/khadherbot/
ENV TZ=Europe/Istanbul
RUN yarn add supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
