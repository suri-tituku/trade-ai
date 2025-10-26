# Use official n8n image
FROM n8nio/n8n:latest

# Basic authentication
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=strongpassword
ENV N8N_ENCRYPTION_KEY=bfouru_secret_key

# Public URL (Render custom domain will override)
ENV N8N_PUBLIC_URL=http://localhost:5678

# Recommended permissions flag
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Expose n8n port
EXPOSE 5678

# Use the built-in entrypoint that already starts n8n correctly
ENTRYPOINT ["tini", "--", "n8n"]
