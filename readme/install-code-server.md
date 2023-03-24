## Installing code-server

```
#!/bin/bash

# Install code-server
curl -fsSL https://code-server.dev/install.sh | sh

# Generate a random token (16 bytes, 32 characters)
TOKEN=$(openssl rand -hex 16)

# Configure code-server with the token
cat > ~/.config/code-server/config.yaml << EOF
bind-addr: 127.0.0.1:8080
auth: password
password: $TOKEN
cert: false
EOF

# Display the command to start code-server with the generated token
echo -e "To start code-server, run the following command:\n\n  code-server --bind-addr 127.0.0.1:8080 --user-data-dir=$HOME/.config/code-server --log info\n\nWhen prompted for a password, use the following token:\n\n  $TOKEN\n"
```
