# Use official Ollama image
FROM ollama/ollama:latest

# Expose the default Ollama port
EXPOSE 11434

# Start Ollama and automatically pull model if not already present
CMD ["bash", "-c", "ollama serve & sleep 8 && ollama pull phi3 && tail -f /dev/null"]
