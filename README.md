# opencode-sandbox
1. Clone the repo and cd to it
2. Build the image by running `docker build -t opencode-sandbox .`
3. Create `~/.opencode.env` and `chmod 600` it. Copy any relevant structure from `opencode-example.env` to it and fill in your actual API keys. This file will get automatically injected into the container environment, and opencode will see those environment variables and automatically connect the providers.
3. Add the quick-launch alias shell function to your shell config file and reload your shell config with `source`
4. To work on a specific project, either cd to the project folder and run `opencode-sandbox` or run `opencode-sandbox /path/to/project` from anywhere
