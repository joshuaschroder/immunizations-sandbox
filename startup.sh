git add .
git commit -m "Daily Backup for $(date)" -a
git push origin master
./includes/keepalive.sh &