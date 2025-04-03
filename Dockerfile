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
CMD ["n8n"]
