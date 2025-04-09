FROM python:3.11-slim

WORKDIR /app

# Install dependencies
RUN pip install --no-cache-dir uv "mcp[cli]"

# Copy the application code
COPY gbif-context.py .

# Command to run the MCP service (derived from install logic)
CMD ["uv", "run", "--with", "mcp[cli]", "mcp", "run", "gbif-context.py"] 
