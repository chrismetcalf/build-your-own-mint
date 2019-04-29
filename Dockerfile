FROM node:10

ENV APP_PORT 8000
ENV SHEETS_REDIRECT_URI urn:ietf:wg:oauth:2.0:oob
EXPOSE 8080

COPY . /byo-mint/
WORKDIR /byo-mint

RUN npm install

ENTRYPOINT ["/byo-mint/entrypoint.sh"]
CMD ["run"]
