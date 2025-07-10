# ⚙️ INSTALLATION — Viking Son Max Pack 0.1

Bienvenue dans la salle des outils.
Avant de brandir les scripts audio, voici comment préparer ton terrain Linux 🔧⚔️

---

## 🔧 Dépendances nécessaires

### 1. FFmpeg  
C’est l’enclume de tout bon outil audio/vidéo.

bash
~$ sudo apt install ffmpeg

💡 Si tu as déjà FFmpeg mais que certaines fonctions semblent bloquées, vérifie qu’il s’agit bien d’une version complète.

---

### 2. Python + Demucs (séparation des pistes audio)  
#### a. Installer Python (si absent)  

bash
~$ sudo apt install python3 python3-venv python3-pip

#### b. Créer un environnement virtuel (dans ton home par exemple)  

bash
~$ python3 -m venv ~/demucs-env

#### c. Activer le venv  

bash
~$ source ~/demucs-env/bin/activate

#### d. Installer Demucs (CPU only, sans CUDA)  

bash
~$ pip install -U demucs

💡 Pour quitter le venv après usage :

bash
~$ deactivate

---

### 3. (Optionnel mais stylé) — Installer Nemo  
> Nautilus (Ubuntu/GNOME) bloque parfois les fichiers `.sh` ou ne gère pas les icônes comme il faut.

Pour une expérience de lanceur fluide et visuelle :

bash
~$ sudo apt install nemo

Puis lance Nemo, navigue dans le dossier du projet, et double-clique à volonté sur :

🛠️ Lanceur-Viking-Extracteur-Max.sh
⚔️ Lanceur-Viking-Separateur-Max.sh

Et c’est le Ragnarök du son 🎧

---

## ✅ Script visuel à lancer en premier

Avant tout autre manipulation, applique le patch esthétique viking :

bash
~$ chmod +x 00-FIXER-ICONES-VIKING.sh
~$ ls -l 00-FIXER-ICONES-VIKING.sh
~$ ./00-FIXER-ICONES-VIKING.sh

Tu peux aussi vérifier le contenu d’un raccourci transformé :

bash
~$ cat ZX-Ressources/Lanceurs-Viking/01-Ouvrir-Guide.desktop

Ce script remplace les chemins `Icon=`, copie les `.desktop` dans le menu, et ajoute les icônes personnalisées sur les fichiers et dossiers avec `gio`.

---

## 🗂️ Fichier de configuration (facultatif)

Fichier : `config-viking.conf`

Décommente et modifie cette ligne **si besoin** :


```bash
# DEMUCS_VENV_PATH="/chemin/vers/ton/env-demucs"
```

💡 En vrai, les scripts cherchent automatiquement si FFmpeg et Demucs sont déjà installés quelque part. Ce champ sert uniquement si tu veux forcer un chemin personnalisé.

📌 Note importante pour exécuter les commandes

Pour que tout fonctionne correctement :

1️⃣ Place-toi dans le dossier du projet :

bash
~$ cd /chemin/vers/Viking-Son-Max-Pack-0.1

OU 2️⃣ Utilise le chemin complet dans chaque commande :

bash
~$ bash /chemin/vers/Viking-Son-Max-Pack-0.1/...

✔️ Cela évite les erreurs et garantit que tous les fichiers sont correctement appelés, même en dehors du dossier racine.

⚙️ Ajustements système potentiels

Certaines distributions Linux, MacOS ou environnements atypiques (WSL, Windows modifié, etc.) peuvent nécessiter :

    une activation manuelle des droits d’exécution (chmod +x)

    l’ajout d’alias ou chemins d’accès personnalisés

    une compatibilité limitée sur les explorateurs de fichiers

⚠️ Windows n’est pas officiellement supporté, même si rien ne t’empêche d’essayer… à tes risques et périls, ô hacker pirate.

🧩 Activation des scripts & lanceurs

Tout est détaillé dans : 📂 🎧-Guide-de-lancement-et-activation-Viking-Son-Max-Pack-0.1.md

💬 En cas de doute : un terminal, du courage, et une bonne playlist de black metal atmosphérique.

---

> Forge audio libre signée Teknoïde 734 — à utiliser sans modération, sauf sur Windows 😈️⚔️🔥⚔️😈️

