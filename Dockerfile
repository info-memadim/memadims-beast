FROM node:18-alpine

# Install n8n globally
RUN npm install -g n8n

# Set environment variables
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=10000
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=Memadims2025!
ENV GENERIC_TIMEZONE=Asia/Jerusalem

# Create app directory
WORKDIR /data

# Expose port
EXPOSE 10000

# Start n8n
CMD ["n8n", "start"]
