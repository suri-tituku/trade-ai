FROM n8nio/n8n:latest

# --- Basic auth for your n8n dashboard ---
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=strongpassword
ENV N8N_ENCRYPTION_KEY=bfouru_secret_key

# --- Public URL (your domain) ---
ENV N8N_PUBLIC_URL=https://ai.bfouru.com

EXPOSE 5678
CMD ["n8n", "start"]
