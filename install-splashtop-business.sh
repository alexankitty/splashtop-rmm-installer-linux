export WINEPREFIX=~/.local/share/splashtop
st_client="https://redirect.splashtop.com/my/src/msi?web_source=direct&web_medium=direct&page=downloads%2Fremote-support&platform=web"
wineboot -u
curl -Lo /tmp/ST_Client.msi $st_client
wine msiexec /i /tmp/ST_Client.msi /qn
rm /tmp/ST_Client.msi
xdg-mime default wine-protocol-st-business.desktop x-scheme-handler/st-business
echo Install completed.
