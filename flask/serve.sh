#!/bin/sh

# Caminhos dos binários e configs
RCLONE_BIN="./rclone"
RCLONE_CONF="./rclone.conf"

# Configurações
REMOTE_NAME="gdrive2"
PASTA_REMOTA="leech"
PORTA="8080"

echo "🔁 Iniciando servidor Rclone..."
echo "📁 Pasta remota: $REMOTE_NAME:$PASTA_REMOTA"
echo "🌐 Porta: $PORTA"
echo "📦 Binário: $RCLONE_BIN"
echo "🗂️ Config: $RCLONE_CONF"
echo "🚫 Sem cache em RAM"

$RCLONE_BIN serve http "$REMOTE_NAME:$PASTA_REMOTA" \
  --config "$RCLONE_CONF" \
  --addr ":$PORTA" \
  --buffer-size 0 \
  --no-modtime \
  --dir-cache-time 1m \
  --log-level INFO \
  --read-only \
  --vfs-read-chunk-size 0 \
  --vfs-cache-mode off