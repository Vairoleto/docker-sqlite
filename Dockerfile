FROM alpine
RUN apk update && \
    apk add sqlite && \
    mkdir /database && \
	sqlite3 /database/ovpn.db "CREATE TABLE EMPRESA (ID INTEGER PRIMARY KEY AUTOINCREMENT,NOMBRE TEXT NOT NULL,PUERTO INT NOT NULL);"
CMD sleep 365d
