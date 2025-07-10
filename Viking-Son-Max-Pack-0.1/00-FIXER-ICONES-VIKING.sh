#!/bin/bash

# */
# * Script : 00-FIXER-ICONES-VIKING
# * Date de création : 28 Juin 2025
# * Auteur : Teknoïde 734
# * Type : Patch visuel + publication système + décos de dossiers pour le Viking-Son-Max-Pack
# * Plateforme cible : GNU/Linux (Zorin, Ubuntu, Mint, Manjaro…)
# * Alias : 🖼️ PATCH VISUEL HARDCORE POUR VIKINGS PUNKS 🖼️
# *
# * Description :
# * Étape 1 : remplace les chemins `Icon=` des fichiers `.desktop`
# * Étape 2 : copie les raccourcis dans ~/.local/share/applications
# * Étape 3 : applique des icônes personnalisées sur les vrais fichiers et dossiers avec `gio`
# *
# * Utilisation :
# * Lancez ce script après décompression pour que les icônes s’affichent dans le menu ET dans les dossiers.
# *
# * Exigences :
# * – Aucun besoin root.
# * – Environnement GTK compatible (Nemo, Nautilus, Thunar, Caja…)
# * – Bash & gio dispo
# -------------------------------------------------------
# 🔒️ Respect éternel :
# Ce script est forgé à la main. Icône = repère. Icône = style.
# Reprendre, oui. Plagier, non. ☠️⚔️🔥

echo "🛠️  [VIKING] Phase 1 — Correction des .desktop..."

ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"
ICON_DIR="$ROOT_DIR/ZX-Ressources/Images-des-icones"
DESKTOP_DIR="$ROOT_DIR/ZX-Ressources/Lanceurs-Viking"

if [ ! -d "$ICON_DIR" ]; then
    echo "❌  Dossier des icones introuvable : $ICON_DIR"
    exit 1
fi
if [ ! -d "$DESKTOP_DIR" ]; then
    echo "❌  Dossier des raccourcis .desktop introuvable : $DESKTOP_DIR"
    exit 1
fi

for file in "$DESKTOP_DIR"/*.desktop; do
    if grep -q "^Icon=" "$file"; then
        ICON_LINE=$(grep "^Icon=" "$file")
        ICON_FILENAME=$(basename "$(echo "$ICON_LINE" | cut -d= -f2)")
        echo "📎  $(basename "$file") ➜ Fichier icône extrait : $ICON_FILENAME"

        if [[ -z "$ICON_FILENAME" ]]; then
            echo "⚠️  Ligne Icon= vide"
            continue
        fi
        NEW_ICON_PATH="$ICON_DIR/$ICON_FILENAME"
        if [ -f "$NEW_ICON_PATH" ]; then
            sed -i "s|^Icon=.*|Icon=$NEW_ICON_PATH|" "$file"
            echo "✅  Icon= remplacé dans $(basename "$file")"
        else
            echo "⚠️  Icône introuvable : $NEW_ICON_PATH"
        fi
    fi
done

echo ""
echo "📦  Phase 2 — Copie des raccourcis dans le menu utilisateur..."

DEST_DIR="$HOME/.local/share/applications"
mkdir -p "$DEST_DIR"
cp "$DESKTOP_DIR"/*.desktop "$DEST_DIR"
chmod +x "$DEST_DIR"/*.desktop

echo "✅  Raccourcis copiés dans : $DEST_DIR"

echo ""
echo "🎨  Phase 3 — Application directe d’icônes sur dossiers/fichiers (via gio)..."

# Fonction utile
apply_icon () {
    TARGET="$1"
    ICON_FILE="$2"
    ABS_ICON="file://$ICON_DIR/$ICON_FILE"
    if [ -e "$TARGET" ] && [ -f "$ICON_DIR/$ICON_FILE" ]; then
        gio set "$TARGET" metadata::custom-icon "$ABS_ICON"
        echo "🎯  $TARGET → 🖼️ $ICON_FILE"
    else
        echo "⛔  Échec : $TARGET ou $ICON_FILE manquant"
    fi
}

# 📍 Association ciblée comme fourni par Teknoïde
apply_icon "$ROOT_DIR/🎧-Guide-de-lancement-et-activation-Viking-Son-Max-Pack-0.1.md" "ICON-Guide-de-lancement-et-activation-Viking-Son-Max-Pack-0.1.png"
apply_icon "$ROOT_DIR/Viking-Extracteur-Max-0.1/🛠️ Lanceur-Viking-Extracteur-Max.sh" "ICON-Lanceur-Viking-Extracteur-Max.png"
apply_icon "$ROOT_DIR/Viking-Separateur-Max-0.1/⚔️ Lanceur-Viking-Separateur-Max.sh" "ICON-Lanceur-Viking-Separateur-Max.png"
apply_icon "$ROOT_DIR/Viking-Extracteur-Max-0.1/ZX-Viking-Extracteur-Max-0.1/Viking-Extracteur-Max.sh" "ICON-Viking-Extracteur-Max-0.1.png"
apply_icon "$ROOT_DIR/Viking-Extracteur-Max-0.1/ZX-Viking-Extracteur-Max-0.1" "ICON-Viking-Extracteur-Max-0.1.png"
apply_icon "$ROOT_DIR/Viking-Extracteur-Max-0.1" "ICON-Viking-Extracteur-Max-0.1.png"
apply_icon "$ROOT_DIR/Viking-Extracteur-Max-0.1/Viking-Extracteur-Max-Entree" "ICON-Viking-Extracteur-Max-Entree.png"
apply_icon "$ROOT_DIR/Viking-Extracteur-Max-0.1/Viking-Extracteur-Max-Sortie" "ICON-Viking-Extracteur-Sortie.png"
apply_icon "$ROOT_DIR/Viking-Separateur-Max-0.1/Viking-Separateur-Max-Entree" "ICON-Viking-Separateur-Max-Entree.png"
apply_icon "$ROOT_DIR/Viking-Separateur-Max-0.1/ZX-Viking-Separateur-Max-0.1-Script/Viking-Separateur-Max-0.1.sh" "ICON-Viking-Separateur-Max-sh.png"
apply_icon "$ROOT_DIR/Viking-Separateur-Max-0.1/ZX-Viking-Separateur-Max-0.1-Script" "ICON-Viking-Separateur-Max-sh.png"
apply_icon "$ROOT_DIR/Viking-Separateur-Max-0.1" "ICON-Viking-Separateur-Max-sh.png"
apply_icon "$ROOT_DIR/Viking-Separateur-Max-0.1/Viking-Separateur-Max-Sortie" "ICON-Viking-Separateur-Max-Sortie.png"

echo ""
echo "🚀  Patch complet appliqué. Vérifiez vos icônes dans l’explorateur de fichiers."

# ╔═════════════════════════════════════════════════════════════════════════════════════╗
# ⚔️  VIKING-PATCH – .DESKTOP + GIO + MENU EXPORTER – PAR TEKNOÏDE 734 ⚔️
#     Icônes sur .desktop, dans le menu, sur les dossiers. 100 % runique.
# ╚═════════════════════════════════════════════════════════════════════════════════════╝
# ════════════════════════════════════════════════════════
# ⚔️  FIN DU SCRIPT – PATCH ICONES VIKING COMPLÉTÉ ⚔️
# ════════════════════════════════════════════════════════
exit 0

