# Use the official Ollama image
FROM ollama/ollama:latest

# Expose default Ollama port
EXPOSE 11434

# Start Ollama in the background, wait, pull the model, and keep it alive
CMD ["push", "-c", "ollama serve & sleep 8 && ollama pull phi3 && tail -f /dev/null"]
