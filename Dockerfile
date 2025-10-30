# Start from a lightweight but complete Linux base
FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && \
    apt-get install -y curl ca-certificates && \
    rm -rf /var/lib/apt/lists/*

# Install Ollama
RUN curl -fsSL https://ollama.ai/install.sh | sh

# Expose Ollama port
EXPOSE 11434

# Start Ollama, pull the model if needed, and keep it running
CMD sh -c "
    ollama serve & 
    sleep 10 && 
    ollama list | grep phi3 || ollama pull phi3 && 
    tail -f /dev/null
"
