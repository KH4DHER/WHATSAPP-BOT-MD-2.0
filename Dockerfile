FROM aquabotwa/sanuwa-official:md-beta
 
RUN git clone https://github.com/KH4DHER/WHATSAPP-BOT-MD-2.0 /root/whatsappbotkdr
WORKDIR /root/whatsappbotkdr/
ENV TZ=Europe/Istanbul
RUN yarn add supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
