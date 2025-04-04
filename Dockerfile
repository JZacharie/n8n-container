FROM n8nio/n8n:latest
# Passer en mode root pour l'installation
USER root
# Installer le module n8n-nodes-mcp
RUN npm install -g n8n-nodes-mcp && npm cache clean --force
# Repasser à l'utilisateur n8n pour exécuter l'application
USER node
# Exposer le port standard de n8n
EXPOSE 5678
# Commande d'exécution
ENV NODE_ENV=production
ARG N8N_RELEASE_TYPE=dev
ENV N8N_RELEASE_TYPE=${N8N_RELEASE_TYPE}

ENV SHELL=/bin/sh
WORKDIR /home/node
USER node
# ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
