export WINEPREFIX=~/.local/share/splashtop
rmm_client="https://packagesstore.blob.core.windows.net/installers/RemoteTools/RMM_Client.exe"
wineboot -u
curl -o /tmp/RMM_Client.exe $rmm_client
wine /tmp/RMM_Client.exe
xdg-mime default wine-protocol-st-rmm.desktop x-scheme-handler/st-rmm
