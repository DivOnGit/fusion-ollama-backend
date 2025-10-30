# 1️⃣ Use the official Ollama image from Docker Hub
FROM ollama/ollama:latest

# 2️⃣ Preload your model (optional but recommended)
# This ensures your model is already downloaded when container starts
RUN ollama pull phi3

# 3️⃣ Expose the port Ollama runs on
EXPOSE 11434

# 4️⃣ Start the Ollama API server
CMD ["ollama", "serve", "--cors"]
