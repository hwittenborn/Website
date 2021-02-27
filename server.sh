if [[ $1 == "pull" ]]; then
  rsync -r --progress 192.168.0.124:/var/www/www.hunterwittenborn.me ./
elif  [[ $1 == "push" ]]; then
  rsync -r --progress ./ 192.168.0.124:/var/www/www.hunterwittenborn.me
else
  echo "[!] Invalid option(s) provided. Please try again with either 'push' or 'pull'"
fi
