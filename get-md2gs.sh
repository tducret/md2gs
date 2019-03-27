#!/bin/sh

echo "=== Installation of md2gs ==="
echo
echo "Downloading md2gs script..."
curl -fsSL https://raw.githubusercontent.com/tducret/md2gs/master/md2gs -o md2gs
echo "Moving md2gs to /usr/local/bin and making it executable..."
mv md2gs /usr/local/bin
chmod +x /usr/local/bin/md2gs
echo "Pulling the md2gs Docker image if not present..."
docker pull thibdct/md2gs
echo
echo "=== End of installation ==="
echo
echo "usage: md2gs --title \"Greatest presentation ever\" path/to/my_presentation.md"
echo
echo "For more information: md2gs --help"