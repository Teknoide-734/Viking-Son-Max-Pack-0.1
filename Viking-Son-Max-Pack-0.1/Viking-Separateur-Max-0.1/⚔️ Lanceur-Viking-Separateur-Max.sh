#!/bin/bash

# */
# * Script : ⚔️ Lanceur-Viking-Separateur-Max.sh
# * Rôle : Lancer Viking-Separateur-Max-0.1 depuis l’interface utilisateur
# * Auteur : Teknoïde 734
# * Date : $(date +%d/%m/%Y)
# * Alias : ⚡ LANCEUR PUNK HARDCORE – SPLIT EDITION ⚡
# *
# * Description :
# * Lance le script Viking-Separateur-Max dans un terminal visible,
# * avec icône personnalisée, popup épique, et respect des chemins relatifs.
# * ➤ Fonctionne sans .desktop ni raccourci système.
# -------------------------------------------------------
# 🔒️ Respect du code : script brut, visible, flexible.
# Merci de respecter l’auteur.

# 📍 Se place dans le bon dossier
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR" || exit 1

# 🎨 Message pop-up (facultatif mais stylé)
if command -v zenity &>/dev/null; then
  zenity --info \
    --window-icon="$SCRIPT_DIR/../ZX-Ressources/Images-des-icones/ICON-Lanceur-Viking-Separateur-Max.png" \
    --title="⚔️ Viking Séparateur Max – Lancement" \
    --text="🎧 Lancement en cours...\n\n🪓 Préparation du split spectral audio..."
fi

# 💡 Terminal visible pour la mission sonore
if command -v gnome-terminal &>/dev/null; then
   gnome-terminal -- bash -c "cd \"\$(dirname \"\$0\")/ZX-Viking-Separateur-Max-0.1-Script\" && bash Viking-Separateur-Max-0.1.sh; read -p \$'\n🔚 Appuie sur une touche pour fermer…'"
elif command -v x-terminal-emulator &>/dev/null; then
  x-terminal-emulator -e bash -c "cd \"\$(dirname \"\$0\")/ZX-Viking-Separateur-Max-0.1-Script\" && bash Viking-Separateur-Max-0.1.sh; read -p \"🔚 Appuie sur une touche pour fermer…\""

else
  echo "❌ Terminal graphique introuvable. Lance manuellement depuis un terminal."
  exit 1
fi

# ╔════════════════════════════════════════════════════════════════════════════════╗
# ⚔️ Viking-Punk Split Launcher – CLÔTURE D’EXÉCUTION AVEC RESPECT ÉTERNEL ⚔️    ║
#     Tu viens d’ouvrir la scission audio avec fureur et précision viking.        ║
#     Prochaine étape : conquête du README et du TUTO 🛡️                          ║
# ╚════════════════════════════════════════════════════════════════════════════════╝
