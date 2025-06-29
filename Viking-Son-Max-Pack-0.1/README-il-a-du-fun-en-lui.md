# ⚔️ Viking Son Max Pack 0.1

---

> ⚖️ Licence : MIT pour le code (fichier `LICENSE`)
> 🧠 + Clause complémentaire de respect créatif (fichier `LICENSE-ET-RESPECT.md`)
> Le code est libre. Le style est sacré.

---

Bienvenue dans la forge.
Entre deux raids en Drakkar sur les routes du son, on a pondu ça ⚔️🔥⚔️
Ici, on ne compresse pas : on extrait.
On ne manipule pas des clics — on sculpte le son avec une hache.

---

## 🛠️ Qu’est-ce que c’est ?

Le pack Viking Son Max contient deux outils audio portables en `.sh` **mode super passe-partout**, dignes des hackers nordiques :

- **Viking-Extracteur-Max** → extrait la bande son d’une vidéo en `.wav` qualité HD-berserker
- **Viking-Séparateur-Max** → sépare voix et musique d’un fichier `.wav`, via Demucs

> Aucun installateur. Aucun setup wizard. Aucun regret.
> Décompressez, activez, cliquez, scindez.
> Pas d’installation lourde, pas de dépendance imposée.
> Juste du son. Du style. Et du shell. 🔥

---

## 📦 Contenu rapide

- `🎧-Guide-de-lancement-et-activation-...md` → toutes les commandes utiles, bien décrites
- `.sh` → les scripts bruts et puissants pour terminal et double-clic
- `.desktop` → présents uniquement pour affichage icônes dans menus

---

## 🔧 Dépendances minimales

- **FFmpeg** complet (pour les extractions audio)
- **Demucs** via un environnement Python (`venv`) – version CPU-only

💡 Tu n’as pas besoin d’être un dev nordique : tout est guidé dans `INSTALL.md`.

---

## ✅ À faire dès le début

Avant tout, applique le patch visuel pour afficher les icônes correctement :

```bash
~$ chmod +x 00-FIXER-ICONES-VIKING.sh
~$ ls -l 00-FIXER-ICONES-VIKING.sh
~$ ./00-FIXER-ICONES-VIKING.sh
~$ cat ZX-Ressources/Lanceurs-Viking/01-Ouvrir-Guide.desktop
```

Ce script :

    corrige les chemins Icon=

    publie les lanceurs .desktop dans ton menu

    applique les icônes aux fichiers/dossiers avec gio 🖼️

📌 Note importante pour lancer les outils

Deux méthodes pour exécuter les scripts :

1️⃣ Se placer dans le dossier :

bash
~$ cd /chemin/vers/Viking-Son-Max-Pack-0.1

OU

2️⃣ Utiliser le chemin complet directement :

bash
~$ bash /chemin/vers/Viking-Son-Max-Pack-0.1/Viking-Extracteur-Max-0.1/...

✔️ Cela garantit le bon fonctionnement des scripts .sh, des icônes, et des raccourcis – même depuis l’extérieur du dossier.

⚙️ Configuration personnalisée (facultatif)

Fichier : config-viking.conf

bash
# DEMUCS_VENV_PATH="/chemin/vers/ton/env-demucs"

💡 Pas besoin de modifier sauf cas spécifique : Les scripts détectent déjà FFmpeg et Demucs partout dans le système.

⚠️ Ajustements système possibles

    activer les droits d’exécution (chmod +x)

    définir les apps par défaut (ex. : ouvrir .sh avec Terminal)

    installer nemo pour remplacer Nautilus si tu veux le double-clic qui marche :

bash
~$ sudo apt install nemo

Ouvre le projet avec Nemo, double-clique sur : 🛠️ Lanceur-Viking-Extracteur-Max.sh ⚔️ Lanceur-Viking-Separateur-Max.sh

Et le son se soumettra.
🪟 Et sur Windows ?

> Windowsiens et Windowsiennes… > Vous avez un système courageux, mais capricieux.

💥 Ce pack est conçu pour GNU/Linux. Tu peux tenter l’aventure via WSL, mais :

    Demucs & Python doivent être installés proprement

    Le comportement graphique sera limité

    Tu seras seul(e) face à l’inconnu

> Blâme Windows, pas la hache. > Nous, on code dans la brume d’Odin.
🍎 Et sur macOS ?

    Utilise Homebrew pour installer FFmpeg :

bash
~$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
~$ brew install ffmpeg

    Crée un venv Python et installe Demucs comme sous Linux

❌ Les .desktop ne sont pas supportés, ✅ Mais les .sh sont compatibles via terminal (ou script Automator pour les fans).
💬 L’auteur

> Scripts codés avec amour, humour et titane par Teknoïde 734 > À utiliser librement, tant que tu respectes : > ⚙️ l’esprit DIY, 🔊 le son brut, 🔒 la non-domestication des runes

---

> Forge audio libre signée Teknoïde 734 — à utiliser sans modération… > … sauf sur Windows. > Parce que là-bas, tout est enregistré 😈⚔️🔥

