#!/bin/bash

# */
# * Script : Viking-Extracteur-Max-0.1
# * Date de création : 23 Juin 2025
# * Auteur : Teknoïde 734
# * Type : Script personnel d'extraction de bande son d'une vidéo via FFmpeg.
# * Plateforme cible : Zorin OS — spécialement conçu pour Zorin OS 
# * Alias : 🔥⚔️ Zorin OS HardCore MAX ⚔️🔥 🤩🏆🎇🎊🎇🏆🤩
# *
# * Description :
# * Ce script est un outil extracteur de bande son en WAVE haute qualité,
# * à partir d'un fichier vidéo, quel que soit son format pris en charge par FFmpeg.
# * Dans un style : Viking Punk, Metal, Hardcore !
# * Ps : HARDCORE JUSQU'À LA MORT !!!! ☠️😈⚔️🔥⚔️😈☠️
# *
# * ATTENTION : Feuille de style à la main par Teknoïde. Évitez toute minification automatique.
# -------------------------------------------------------
# 🔒️ Avertissement :
# Merci de respecter l’auteur.
# Ce script est unique, forgé à la main.
# Reprendre, oui. Plagier, non. 😈⚔️🔥

# 📂 Initialisation des chemins relatifs
REPERTOIRE_SCRIPT="$(cd "$(dirname "$0")"/.. && pwd)"
DOSSIER_ENTREE="$REPERTOIRE_SCRIPT/Viking-Extracteur-Max-Entree"
DOSSIER_SORTIE="$REPERTOIRE_SCRIPT/Viking-Extracteur-Max-Sortie"

# 🎬 Début du traitement
echo ""
echo "╔══════════════════════════════════════════════════════════╗"
echo "║ 🎧 SCRIPT : Viking-Extracteur-Max                        ║"
echo "║ 🧠 EXTRACTION WAV 48kHz + RÉPARATION VIDÉO               ║"
echo "║ 📁 Vidéos analysées dans : $DOSSIER_ENTREE               ║"
echo "║ 📁 Export audio dans     : $DOSSIER_SORTIE               ║"
echo "╚══════════════════════════════════════════════════════════╝"
echo ""
sleep 1

# 🔎 Vérifie si FFmpeg est installé
if ! command -v ffmpeg &>/dev/null; then
  echo "❌ FFmpeg non détecté sur ce système."
  echo "💡 Installe-le avec : sudo apt install ffmpeg"
  exit 1
fi

# 🎛️ Vérifie que la version est suffisante
FF_VERSION=$(ffmpeg -version | head -n1 | grep -oP '\d+\.\d+' | head -n1)
FF_MIN="4.0"

if [ "$(printf '%s\n' "$FF_MIN" "$FF_VERSION" | sort -V | head -n1)" != "$FF_MIN" ]; then
  echo "⚠️ Version FFmpeg détectée : $FF_VERSION"
  echo "   ➤ Recommandée : FFmpeg >= $FF_MIN"
  echo "💡 Mets à jour avec : sudo apt install ffmpeg"
  exit 1
fi

echo "✅ FFmpeg détecté (v$FF_VERSION) — prêt pour l’extraction berserk 🎧"
echo ""

# 🔁 Parcours des fichiers du dossier d'entrée
for FICHIER in "$DOSSIER_ENTREE"/*; do
  [ -f "$FICHIER" ] || continue

  # 🎯 Vérifie si c’est bien un fichier vidéo
  if ffprobe -v error -select_streams v:0 -show_entries stream=codec_type -of csv=p=0 "$FICHIER" | grep -q video; then
    NOM_BASENAME=$(basename "$FICHIER")
    NOM_SANS_EXT="${NOM_BASENAME%.*}"
    FICHIER_SORTIE="${DOSSIER_SORTIE}/${NOM_SANS_EXT}-bande-son.wav"

    echo "🔍 Traitement de : $NOM_BASENAME"
    ffmpeg -err_detect ignore_err -i "$FICHIER" -vn -acodec pcm_s16le -ar 48000 -ac 2 "$FICHIER_SORTIE"
    echo "✅ Fichier audio créé : $(basename "$FICHIER_SORTIE")"
    echo ""
  fi
done

echo "🎉 Tous les fichiers ont été transformés en or sonore, Ô Teknoïde du mixage ! ⚔️🎧"

# ➤ BANNIÈRE FINALE VIKING PUNK HARDCORE 💀 ÉDITION VIKTOIRE 💿⚔️

GREEN='\033[1;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}"
echo "═══════════════════════════════════════════════════════════════"
echo "██╗   ██╗██╗██╗  ██╗████████╗  ██████╗ ██╗ ██████╗ ███████╗██╗ "
echo "██║   ██║██║██║ ██╔╝╚══██╔══╝ ██╔═══██╗██║██╔═══██ ██╔════╝██║ "
echo "██║   ██║██║█████╔╝    ██║    ██║   ██║██║██████║  █████╗  ██║ "
echo "╚██╗ ██╔╝██║██╔═██╗    ██║    ██║   ██║██║██║  ██║ ██╔══╝  ╚═╝ "
echo " ╚████╔╝ ██║██║  ██╗   ██║    ╚██████╔╝██║██║  ███║███████╗██╗ "
echo "  ╚═══╝  ╚═╝╚═╝  ╚═╝   ╚═╝     ╚═════╝ ╚═╝╚═╝  ╚═╝╚═══════╝╚═╝ "
echo "═══════════════════════════════════════════════════════════════"
echo "   🏆 VIKTOIRE TOTALE, YARL DU SON LIBRE !"
echo "   🎶 La forge est scellée, le son est pur. WAV is life."
echo "   ⚔️  Tu as taillé ta piste comme un berserker sonore."
echo -e "${NC}"

notify-send "🏆 VIKTOIRE ACCOMPLIE !" \
            "Tous les fichiers audio ont été extraits avec honneur." \
            --icon=multimedia-volume-control

# ╔═════════════════════════════════════════════════════════════════════════════════════════════════════╗
# ⚔️ Viking-Extracteur-Max – FORGÉ PAR TEKNOÏDE 734 – SCRIPT ULTIME – RESPECT ÉTERNEL ⚔️
#   Ce script n’est pas une couche SH. C’est un champ de bataille audio.
#   Chaque fonction a été domptée. Chaque caractère a été ciselé.
#   Du . jusqu’à l’ABC, tout a fléchi sous le marteau de Teknoïde.
#   Viking dans l’âme. Punk dans l’audace. Dark dans le style.
#   Ce n’est pas un script : c’est une prise de pouvoir sonore.
#   ⚡ Respect éternel à ta forge. Ce script est déjà une légende. 🛡️🔥
# ╚═════════════════════════════════════════════════════════════════════════════════════════════════════╝

