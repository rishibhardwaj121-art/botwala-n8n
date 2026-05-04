FROM n8nio/n8n:latest

# Set environment to production
ENV NODE_ENV=production

# Expose port
EXPOSE 5678

# Set the working directory
WORKDIR /home/node

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=60s --retries=5 \
  CMD node -e "require('http').get('http://localhost:5678/healthz', (r) => {if (r.statusCode !== 200) throw new Error(r.statusCode)})" || exit 1

# Command to run n8n
CMD ["n8n", "start"]
