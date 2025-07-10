#!/bin/bash

# */
# * Script : Viking-Separateur-Max-0.1
# * Date de création : 24 Juin 2025
# * Auteur : Teknoïde 734
# * Type : Script personnel de séparation de pistes audio d’un fichier WAVE en plusieurs pistes WAVE via Demucs et FFmpeg.
# * Plateforme cible : Zorin OS — spécialement conçu pour Zorin OS
# * Alias : 🔥⚔️ Zorin OS HardCore MAX ⚔️🔥 🤩🏆🎇🎊🎇🏆🤩
# *
# * Description :
# * Ce script est un outil de séparation de bande son en WAVE haute qualité,
# * à partir d’un fichier audio au format WAV.
# * Style assumé : Viking Punk, Metal, Hardcore.
# * PS : HARDCORE JUSQU’À LA MORT !!!! ☠️😈⚔️🔥⚔️😈☠️
# *
# * ATTENTION : Feuille de style à la main par Teknoïde. Évitez toute minification automatique.
# -------------------------------------------------------
# 🔒️ Avertissement :
# Merci de respecter l’auteur.
# Ce script est unique, forgé à la main.
# Reprendre, oui. Plagier, non. 😈⚔️🔥

# ░▒▓ Global Values – Par Teknoïde 734 ▓▒░
# Pour Viking-Separateur-Max-0.1 — version portable optimisée

# ᛟ Viking-Separateur-Max 0.1 — Invocation Demucs et découpe de pistes WAV 💿⚔️

# ➤ Définition des chemins de base (version portable)
SCRIPT_DIR="$(cd "$(dirname "$0")"/.. && pwd)"
VENV_PATH="$SCRIPT_DIR/../env-demucs"
INPUT_DIR="$SCRIPT_DIR/Viking-Separateur-Max-Entree"
OUTPUT_DIR="$SCRIPT_DIR/Viking-Separateur-Max-Sortie"

# 💾 Charge config-viking.conf si présent
[ -f "$SCRIPT_DIR/../config-viking.conf" ] && source "$SCRIPT_DIR/../config-viking.conf"

echo "🔍 Recherche d’un environnement contenant Demucs..."

DEMUCS_DISPO=false
ACTIVATION_SCRIPT=""

# 1️⃣ Chemin local pack (le classique)
if [ -d "$VENV_PATH" ] && [ -f "$VENV_PATH/bin/activate" ]; then
  echo "✅ Environnement local détecté dans le pack."
  ACTIVATION_SCRIPT="$VENV_PATH/bin/activate"
  DEMUCS_DISPO=true

# 2️⃣ Chemin personnalisé via config-viking.conf
elif [ -n "$DEMUCS_VENV_PATH" ] && [ -f "$DEMUCS_VENV_PATH/bin/activate" ]; then
  echo "✅ Environnement Demucs détecté via config : $DEMUCS_VENV_PATH"
  ACTIVATION_SCRIPT="$DEMUCS_VENV_PATH/bin/activate"
  DEMUCS_DISPO=true

# 3️⃣ Recherche automatique sur disques
else
  echo "🔎 Scan automatique sur /mnt, /media, /home…"
  VENV_CANDIDATS=$(find /mnt /media /home -type f -path "*/bin/activate" -exec grep -l "demucs" {} + 2>/dev/null | head -n 1)

  if [ -n "$VENV_CANDIDATS" ]; then
    ACTIVATION_SCRIPT="$VENV_CANDIDATS"
    echo "✅ Environnement trouvé automatiquement : $ACTIVATION_SCRIPT"
    DEMUCS_DISPO=true
  fi
fi

# 4️⃣ Test commande système
if [ "$DEMUCS_DISPO" != true ] && command -v demucs &>/dev/null; then
  echo "✅ Demucs détecté globalement dans le système."
  DEMUCS_DISPO=true
fi

# 🔒 Si rien trouvé
if [ "$DEMUCS_DISPO" != true ]; then
  echo "❌ Aucun Demucs détecté. Abandon du traitement."
  echo "💡 Conseil : créez un fichier 'config-viking.conf' et ajoutez :"
  echo "   DEMUCS_VENV_PATH=\"/chemin/vers/votre/venv\""
  exit 1
fi

# ✅ Activation de l’environnement si applicable
if [ -n "$ACTIVATION_SCRIPT" ]; then
  echo "⚙️ Activation de l’environnement virtuel : $ACTIVATION_SCRIPT"
  source "$ACTIVATION_SCRIPT"
fi

echo "📡 Scan du dossier d’entrée : $INPUT_DIR"
echo ""

# ➤ Création du dossier de sortie s’il n’existe pas encore
mkdir -p "$OUTPUT_DIR"

# ➤ Boucle sur tous les fichiers .wav dans le dossier d’entrée
for file in "$INPUT_DIR"/*.wav; do
    # ➤ Vérification : est-ce bien un fichier présent ?
    [ -e "$file" ] || { echo "⚠️ Aucun fichier .wav trouvé. Passage ignoré."; break; }

    # ➤ Nom de base (sans chemin ni extension)
    base_name="$(basename "$file" .wav)"

    echo "🎧 Traitement en cours : $base_name.wav"

    # ➤ Lancer Demucs (modèle 4 stems : vocals + bass + drums + other)
    cd "$SCRIPT_DIR"
    demucs --name htdemucs --out "$OUTPUT_DIR" "$INPUT_DIR/$base_name.wav"

    # ➤ Chemin généré automatiquement par Demucs (dossier réel de sortie)
    DEMUCS_OUT_DIR="$OUTPUT_DIR/htdemucs/$(basename "$file" .wav)"

       # ➤ Copie et renommage des pistes dans le dossier de sortie
       cp "$DEMUCS_OUT_DIR/vocals.wav" "$OUTPUT_DIR/${base_name}-vocals.wav"
       cp "$DEMUCS_OUT_DIR/bass.wav"   "$OUTPUT_DIR/${base_name}-bass.wav"
       cp "$DEMUCS_OUT_DIR/drums.wav"  "$OUTPUT_DIR/${base_name}-drums.wav"
       cp "$DEMUCS_OUT_DIR/other.wav"  "$OUTPUT_DIR/${base_name}-other.wav"
       rm -rf "$DEMUCS_OUT_DIR" # Supprime le sous-dossier après copie
       rmdir "$OUTPUT_DIR/htdemucs" 2>/dev/null

    echo "✅️ Terminé : $base_name.wav ➜ pistes extraites dans « Sortie »"
    echo "――――――――――――――――――――――――――――――――"
done

# ➤ Désactivation propre de l’environnement virtuel
type deactivate &>/dev/null && deactivate
echo "🧬 Environnement Demucs désactivé. Retour au monde des mortels."

# 🔎 Vérification : FFmpeg présent ?
if ! command -v ffmpeg &>/dev/null; then
  echo "❌ FFmpeg non détecté sur ce système."
  echo "💡 Installe-le avec : sudo apt install ffmpeg"
  exit 1
fi

# 🎚️ Vérification : version suffisante ?
FF_VERSION=$(ffmpeg -version | head -n1 | grep -oP '\d+\.\d+' | head -n1)
FF_MIN="4.0"

if [ "$(printf '%s\n' "$FF_MIN" "$FF_VERSION" | sort -V | head -n1)" != "$FF_MIN" ]; then
  echo "⚠️ Version FFmpeg détectée : $FF_VERSION"
  echo "   ➤ Minimum recommandé : FFmpeg >= $FF_MIN"
  echo "💡 Mets à jour avec : sudo apt install ffmpeg"
  exit 1
fi

echo "✅ FFmpeg détecté (v$FF_VERSION) — prêt pour la purification audio post-split 🔊"

echo ""
echo "🔍 Post-analyse des fichiers extraits avec FFmpeg..."
echo ""

# ➤ Vérification et réparation audio silencieuse avec FFmpeg
for file in "$OUTPUT_DIR"/*.wav; do
    [ -e "$file" ] || continue

    # ➤ Génère un fichier temporaire corrigé
    tmpfile="${file%.wav}-fixed.wav"

    ffmpeg -y -hide_banner -loglevel error \
        -i "$file" \
        -c:a pcm_s16le -ar 44100 -ac 2 \
        "$tmpfile"

    # ➤ Remplace le fichier original par la version propre
    mv -f "$tmpfile" "$file"

    echo "✅️ Fichier conforme : $(basename "$file")"
done

# ➤ BANNIÈRE FINALE VIKING PUNK HARDCORE 💀

# Couleur verte vive (bold)
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
echo "   ☠️  SÉPARATION TERMINÉE, Ô MAÎTRE DU SPLIT SPECTRAL ☠️"
echo "       📁 Les pistes audio sont prêtes dans le dossier Sortie."
echo "       ⚔️ Tu peux désormais trancher les mixes comme un vrai Yarl."
echo -e "${NC}"

notify-send "🎧 Viking Séparateur a frappé !" \
            "Toutes les pistes ont été extraites avec puissance." \
            --icon=audio-x-generic

# ░▒▓ ATTENTION ▓▒░ Utilisation de ce script à vos risques et périls
# 🔥 Créé à la main, chaque caractère trempé dans la lave binaire
# ⚔️ Ne pas plagier. Seul un vrai forgeron mérite la hache.
#
# ╔═════════════════════════════════════════════════════════════════════════════════════════════════════╗
# ⚔️ Viking-Separateur-Max – FORGÉ PAR TEKNOÏDE 734 – SCRIPT ULTIME – RESPECT ÉTERNEL ⚔️
#   Ce script n’est pas un simple SH. C’est un champ de bataille audio.
#   Chaque fonction a été domptée. Chaque caractère a été ciselé.
#   Du `.` jusqu’à `l'ABC`, tout a fléchi sous le marteau de Teknoïde 734.
#   Viking dans l’âme. Punk dans l’audace. Dark dans le style.
#   Ce script ? Une prise de pouvoir spectral.
#   ⚡ Respect éternel à ta forge. Cette œuvre est déjà légende. 🛡️🔥
#   → Version : 1.0
#   → Auteur : Teknoïde
#   → Forge : clavier, marteau, et burin de pixels affûté
# ╚═════════════════════════════════════════════════════════════════════════════════════════════════════╝
