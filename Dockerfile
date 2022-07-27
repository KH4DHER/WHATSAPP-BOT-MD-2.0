FROM quay.io/khadher/khadher
 
RUN git clone https://github.com/KH4DHER/WHATSAPP-BOT-MD-2.0 /root/whatsappbot
WORKDIR /root/whatsappbot/
ENV TZ=Europe/Istanbul
RUN yarn add supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
