import os
import subprocess

# Caminhos
bin_rclone = "./rclone"
conf_rclone = "./rclone.conf"
script_sh = "./serve.sh"

# Dar permissão de execução
os.chmod(bin_rclone, 0o755)
os.chmod(script_sh, 0o755)

# Executar o script
subprocess.Popen(["sh", script_sh])