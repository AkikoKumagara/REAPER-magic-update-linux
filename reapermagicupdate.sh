cd ~/Downloads
curl -sLo - "https://reaper.fm/$(curl -s "https://www.reaper.fm/download.php" | grep -o -m 1 "files/.*\.x/reaper.*_linux_x86_64.tar.xz")" | tar xJ
cd reaper_linux_x86_64
sh ./install-reaper.sh
cd .. && rm -r reaper_linux_x86_64
