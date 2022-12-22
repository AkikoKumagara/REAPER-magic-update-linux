cd ~/Downloads
curl https://www.reaper.fm/download.php >> reaper.html
grep -o -m 1 "files/.*.x/reaper.*.*.*_linux_x86_64.tar.xz" reaper.html > reaperout.txt
sed -i -e 's_.*_https://reaper.fm/&_' reaperout.txt
wget -i reaperout.txt -O reaper.tar.xz
rm -rf reaper.html reaperout.txt 
tar -xf reaper.tar.xz
cd reaper_linux_x86_64
sh ./install-reaper.sh
cd .. && rm -rf reaper.tar.xz reaper_linux_x86_64