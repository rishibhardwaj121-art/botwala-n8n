FROM n8nio/n8n:latest

ENV NODE_ENV=production

EXPOSE 5678

WORKDIR /home/node

# Remove the healthcheck that's failing
# HEALTHCHECK will be managed by Railway

CMD ["n8n", "start"]
