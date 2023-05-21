FROM ubuntu
RUN apt update -y && apt upgrade -y
RUN DEBIAN_FRONTEND=noninteractive apt install -y nginx sudo nano npm
COPY . /srv/xonix
WORKDIR /srv/xonix
RUN npm install -g && npm install
# RUN chown -R www-data:www-data /srv && chmod +x /srv/telegram_admin/run.sh && chmod +x /srv
