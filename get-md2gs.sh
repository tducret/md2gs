#!/bin/sh

SCRIPT_INSTALLATION_PATH="/usr/local/bin"

echo "=== Installation of md2gs ==="
echo
echo "Downloading md2gs script..."
curl -fsSL https://raw.githubusercontent.com/tducret/md2gs/master/md2gs -o md2gs
echo "Making md2gs executable..."
chmod 755 md2gs
echo "Moving md2gs to ${SCRIPT_INSTALLATION_PATH}..."
if [ ! -w ${SCRIPT_INSTALLATION_PATH} ]; then
	echo
	echo "Warning: Cannot write in ${SCRIPT_INSTALLATION_PATH} with the current user"
	read -p "Press a key to continue as sudo (or Ctrl+C to cancel installation)" -n 1 -r
	sudo mv md2gs ${SCRIPT_INSTALLATION_PATH}
else
	mv md2gs ${SCRIPT_INSTALLATION_PATH}
fi
echo "Pulling the md2gs Docker image if not present..."
docker pull thibdct/md2gs
echo
echo "=== End of installation ==="
echo
echo "usage: md2gs --title \"Greatest presentation ever\" path/to/my_presentation.md"
echo
echo "For more information: md2gs --help"