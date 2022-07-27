FROM KH4DHER/WHATSAPP-BOT:md-beta
 
RUN git clone https://github.com/KH4DHER/WHATSAPP-BOT-MD-2.0 /root/aquabot
WORKDIR /root/aquabot/
ENV TZ=Europe/Istanbul
RUN yarn add supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
