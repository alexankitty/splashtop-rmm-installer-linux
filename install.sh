export WINEPREFIX=~/.local/share/splashtop
DESKTOP_PATH="$HOME/.local/share/applications"
SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)
EXEC_LINE="Exec=env \"WINEPREFIX=$WINEPREFIX\" "
EXEC_LINE+="$WINEPREFIX/st-rmm-url-launcher.sh %u"
PATH_LINE="Path=${WINEPREFIX}/drive_c/Program Files (x86)/Splashtop/Splashtop Remote/Client for RMM"
EXPORT_PREFIX="export WINEPREFIX=$WINEPREFIX"
rmm_client="https://packagesstore.blob.core.windows.net/installers/RemoteTools/RMM_Client.exe"
wineboot -u
curl -o /tmp/RMM_Client.exe $rmm_client
wine /tmp/RMM_Client.exe
rm /tmp/RMM_Client.exe
sed -i "s|^Exec=.*|$EXEC_LINE|" "$SCRIPT_DIR/st-rmm.desktop"
sed -i "s|^Path=.*|$PATH_LINE|" "$SCRIPT_DIR/st-rmm.desktop"
sed -i "s|^export WINEPREFIX=.*|$EXPORT_PREFIX|" "$SCRIPT_DIR/st-rmm-url-launcher.sh"
cp "$SCRIPT_DIR/st-rmm-url-launcher.sh" "$WINEPREFIX/"
desktop-file-install --dir="$DESKTOP_PATH" "$SCRIPT_DIR/st-rmm.desktop"
update-desktop-database "$DESKTOP_PATH"
xdg-mime default st-rmm.desktop x-scheme-handler/st-rmm
echo Install completed.
