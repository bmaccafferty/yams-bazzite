#!/bin/bash
set -euo pipefail

echo "Docker is already installed on this system."
echo "If you need to reinstall, run: rpm-ostree install docker"
echo "Then reboot: systemctl reboot"
echo "Then re-run the YAMS installer."
