FROM node:22-slim

# Install basic dev utilities OpenCode might need (git, curl, etc.)
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*

# Install OpenCode globally
RUN npm install -g opencode-ai@latest

# Set the working directory
WORKDIR /workspace

# Set OpenCode as the default executable
ENTRYPOINT ["opencode"]
