#!/bin/bash

# */
# * Script : 🛠️ Lanceur-Viking-Extracteur-Max.sh
# * Rôle : Lancer Viking-Extracteur-Max.sh depuis l’interface utilisateur
# * Auteur : Teknoïde 734
# * Date : $(date +%d/%m/%Y)
# * Alias : ⚡ LANCEUR PUNK HARDCORE – VIKING EDITION ⚡
# *
# * Description :
# * Lance le script Viking-Extracteur-Max dans le terminal,
# * avec la classe, l’icône, et le bon chemin relatif,
# * pour la version 100% portable du pack sonore Viking.
# -------------------------------------------------------
# 🔒️ Respect : script minimal, pur, forgé pour durer. Ne pas minifier.
# Merci de respecter l’auteur.

# 📍 Se place dans le bon dossier
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR" || exit 1

# 🎨 Message pop-up en bonus (doit venir après définition de SCRIPT_DIR)
if command -v zenity &>/dev/null; then
  zenity --info \
    --window-icon="$SCRIPT_DIR/../ZX-Ressources/Images-des-icones/ICON-Lanceur-Viking-Extracteur-Max.png" \
    --title="🛠️ Viking Extracteur Max – Lancement" \
    --text="🎧 Lancement imminent...\n\n💿 Terminal en préparation sonore..."
fi

# 💡 Force l’ouverture dans gnome-terminal (ou fallback)
if command -v gnome-terminal &>/dev/null; then
  gnome-terminal -- bash -c "cd \"\$(dirname \"\$0\")/ZX-Viking-Extracteur-Max-0.1\" && bash Viking-Extracteur-Max.sh; read -p \$'\n🔚 Appuie sur une touche pour fermer…'"
elif command -v x-terminal-emulator &>/dev/null; then
  x-terminal-emulator -e bash -c "cd \"\$(dirname \"\$0\")/ZX-Viking-Extracteur-Max-0.1\" && bash Viking-Extracteur-Max.sh; read -p \"🔚 Appuie sur une touche pour fermer…\""
else
  echo "❌ Terminal graphique introuvable. Lancez-moi depuis un terminal manuellement."
  exit 1
fi

# ╔═══════════════════════════════════════════════════════════════════════════════╗
# ⚔️ Viking-Punk Launcher – CLÔTURE D’EXÉCUTION AVEC RESPECT ÉTERNEL ⚔️
#   Tu viens de libérer de l’audio viking avec style.
#   Si ça a grogné, cliqué ou vibré : tu es dans la bonne timeline.
# ╚═══════════════════════════════════════════════════════════════════════════════╝
