# 🧾 TON-THE-TUTO-DU-VIKING-SON-MAX · Structure simple à copier

> 🛠️ Viking Son Max 0.1  

> ⚔️ Forge libre signée Teknoïde 734

---

## 🗂️ Structure du tuto — Page par page :

### 📖 Page 2 — Introduction

- Présentation rapide : qu’est-ce que c’est

- Fonctionnement général (extraction + séparation)

- Aucun besoin d’installer un logiciel lourd

- Tout fonctionne en local, sans connexion

### 🛠️ Page 3 — Préparer le terrain

- Lister les dépendances : FFmpeg, Python, Demucs, Nemo

- Commandes de base pour les installer

- Ajout possible de captures écran

### 🗡️ Page 4 — Activer les scripts

- Commandes `chmod +x` pour les `.sh` et `.desktop`

- Note graphique pour l’alternative clic droit → permissions

### 🚀 Page 5 — Lancer les outils

- Méthode 1 : double-clic `.sh` (ou `.desktop` visuel avec Nemo)

- Méthode 2 : terminal avec bash complet

- Option d’ajouter des captures terminal illustratives

### 🧩 Page 6 — Astuces et erreurs fréquentes

- `.desktop` qui ne lance pas ? → permissions, gestionnaire

- Demucs plante ? → venv mal activé ou fichier trop long

- FFmpeg inactif ? → mauvaise version ?

- Et pour finir… une citation rituelle à la sauce Viking 😈

---

💡 **Astuce mise en page PDF :**

Tu peux assembler tout ça dans **LibreOffice Writer** :

- Colle chaque bloc de texte

- Ajoute des titres stylisés et encadrés

- Exporte en `.pdf` → ton tuto est prêt à être imprimé ou partagé

---

# ⚔️ Page 2 — Introduction (mise à jour)

Bienvenue dans le **Viking Son Max Pack 0.1** — un projet libre, léger, fun et brutalement efficace.  

Tu veux extraire une bande-son en `.wav` depuis une vidéo YouTube téléchargée ? Tu veux isoler la voix d’un chanteur ou choper la musique sans vocal ?  

Tu veux que ça marche **en local**, **sans cloud** et **sans logiciel lourdaud** ?  

Ce pack est ton compagnon de hache.

## 🎧 Deux outils t’attendent :

- **🌀 Viking-Extracteur-Max**  

  → Récupère la bande-son de **n’importe quelle vidéo** (même longue), en qualité `.wav` **HD berserker**

- **🎙️ Viking-Séparateur-Max**  

  → Découpe **voix / instru** sur un fichier `.wav` grâce à **Demucs**, une IA dédiée à l’audio  

  ⚠️ À utiliser de préférence sur des fichiers courts (extraits, samples) pour éviter que Demucs sature.  

  ➕ Astuce : Pré-découpe les morceaux longs avec **Audacity** ou un autre éditeur pour garder le contrôle.

---

### ✅ Pourquoi ce pack est différent :

- Pas besoin d’installation complexe ou d’abonnement  

- Fonctionne **en local**, même sur une **clé USB**  

- Utilisable même par un utilisateur débutant, **sans ligne de commande obligatoire**

- Style visuel, icônes personnalisées, humour et efficacité 🧠🎛️

---

📌 **Note importante pour lancer les outils** :

Deux options :

1️⃣ Se placer dans le dossier du projet :

```bash
~$ cd /chemin/vers/Viking-Son-Max-Pack-0.1

OU

2️⃣ Utiliser le chemin complet vers chaque script :

bash
~$ bash /chemin/vers/Viking-Son-Max-Pack-0.1/Viking-Extracteur-Max-0.1/...

✔️ Ça évite les erreurs de chemin et garantit que les scripts reconnaissent les ressources.

🧭 Tu lis ce tuto ? Alors tu viens d’armer ton premier pack audio comme un vrai Viking libre.

> À toi la séparation. À toi l’extraction. > Et que le .wav soit net, puissant, et stylé.

---


🛠️ Page 3 à suivre ? Tu n’as qu’à grogner, et je la sors de la forge. ⚡

---

Tu lis ce tuto ? C’est que t’as déjà commencé ton raid. Bienvenue à bord.

---

# 🛠️ Page 3 — Préparer le terrain (mise à jour)

Avant de lancer la forge audio, il faut **poser les fondations du son**.  
Voici les outils indispensables à installer sur ton système GNU/Linux pour faire tourner le pack comme une catapulte de `.wav`.

---

## 1. 🧰 FFmpeg — L’enclume de l’audio

Utilisé pour extraire les pistes son d’une vidéo, quel que soit son format.

```bash
~$ sudo apt install ffmpeg

💡 Vérifie que tu n’as pas une version bridée : certaines distros minimalistes installent un FFmpeg sans les bons codecs. Teste ça :

bash
~$ ffmpeg -version

2. 🐍 Python + environnement virtuel (pour Demucs)

Demucs est l’outil IA qui découpe voix/instru. Il tourne dans un environnement Python isolé (venv), simple à installer.

Installe Python et ses outils :

bash
~$ sudo apt install python3 python3-venv python3-pip

Crée un venv pour Demucs (où tu veux) :

bash
~$ python3 -m venv ~/demucs-env

Active le venv :

bash
~$ source ~/demucs-env/bin/activate

Installe Demucs (CPU only, pas de carte graphique requise) :

bash
~$ pip install -U demucs

💡 Si tu quittes le terminal, n’oublie pas de réactiver le venv avant de relancer le séparateur. Et pour le quitter manuellement :

bash
~$ deactivate

3. 📁 Nemo (le gestionnaire de fichiers recommandé)

Nautilus bloque parfois les .desktop portables. Installe Nemo pour profiter du double-clic sans prise de tête.

bash
~$ sudo apt install nemo


Une fois installé, ouvre le dossier du projet avec :

bash
~$ nemo .

Et bam 💥 double-clique sur :

    🛠️ Lanceur-Viking-Extracteur-Max.sh

    ⚔️ Lanceur-Viking-Separateur-Max.sh

🔥 Et c’est le Ragnarök du son.

📌 Astuce bonus :

Si ton environnement venv est installé ailleurs, tu peux l’indiquer dans ce fichier :

bash
config-viking.conf

Décommente et modifie cette ligne si nécessaire :

bash
# DEMUCS_VENV_PATH="/chemin/vers/ton/env-demucs"

Mais dans 90 % des cas, tu n’auras rien à toucher — les scripts détectent tout seuls les install existantes.

---

# 🔐 Page 4 — Activer les scripts (mise à jour)

Avant de libérer le pouvoir des outils, **il faut leur passer l’anneau de l’exécution** : les scripts `.sh` et lanceurs `.desktop` doivent être marqués comme “exécutables” par ton système. Sinon, ils resteront endormis comme des lignes de texte ordinaires. Voici deux méthodes :

---

## 🖥️ Méthode 1 — Terminal (recommandée pour les aventuriers du shell)

Entre dans le dossier du pack, puis tape ces commandes :

### ✅ Rendre les scripts `.sh` exécutables :

```bash
~$ chmod +x Viking-Extracteur-Max-0.1/ZX-Viking-Extracteur-Max-0.1/Viking-Extracteur-Max.sh

~$ chmod +x Viking-Separateur-Max-0.1/ZX-Viking-Separateur-Max-0.1-Script/Viking-Separateur-Max-0.1.sh
```

✅ Rendre les lanceurs .desktop stylés cliquables :

bash
~$ chmod +x "Viking-Extracteur-Max-0.1/🛠️ Lanceur-Viking-Extracteur-Max.desktop"

~$ chmod +x "Viking-Separateur-Max-0.1/⚔️ Lanceur-Viking-Separateur-Max.desktop"

💡 Si tu veux vérifier qu’ils sont bien prêts au combat :

bash
~$ ls -l *.sh *.desktop

Les fichiers devront afficher un x dans les droits (-rwxr-xr-x etc.)

🖱️ Méthode 2 — Interface graphique (pour les esthètes au clic rapide)

    Clic droit sur chaque fichier .sh ou .desktop

    Va dans “Propriétés” > “Permissions”

    Coche la case : ✅ “Autoriser l’exécution du fichier comme un programme”

🎉 Une fois activés, ces fichiers deviennent de véritables lanceurs sonores : double-clic → le terminal s’ouvre → ton script vibre et frappe.

📌 N’oublie pas : Ces étapes sont à faire une seule fois après décompression du pack. Une fois bénis par le chmod, tes outils sont prêts à faire trembler le .wav.

---

# 🚀 Page 5 — Lancer les outils (mise à jour)

Tu y es. Les scripts sont activés, les runes sont gravées. Le terrain est prêt à vibrer.  
Deux chemins mènent au Ragnarök sonore : le **double-clic stylé** ou la **ligne de commande hardcore**. À toi de choisir ton style.

---

## 🖱️ Méthode 1 : double-clic des lanceurs `.sh`  

> (Recommandée pour les explorateurs visuels 🧭)

Depuis le gestionnaire de fichiers **Nemo** (voir Page 3), accède au dossier du pack et double-clique sur :

- 🛠️ **Lanceur-Viking-Extracteur-Max.sh**  
 
   → pour extraire la bande son d’une vidéo

- ⚔️ **Lanceur-Viking-Separateur-Max.sh**  
 
   → pour séparer voix et musique dans un fichier `.wav`

💡 Si tu utilises **Nautilus** (Ubuntu par défaut) et que rien ne se passe → retourne Page 3 et installe Nemo.

✔️ Ces `.sh` sont plus fiables que les `.desktop` dans tous les environnements.  
Ils affichent un terminal avec un menu clean, customisé façon Viking.

---

## 💻 Méthode 2 : exécution via terminal  
> (Pour les forgerons du shell ⚒️)

Place-toi dans le dossier du projet (ou utilise les chemins absolus), et tape :

### ▶️ Lancer l’Extracteur :

```bash
~$ bash Viking-Extracteur-Max-0.1/ZX-Viking-Extracteur-Max-0.1/Viking-Extracteur-Max.sh
```
▶️ Lancer le Séparateur :

bash
~$ bash Viking-Separateur-Max-0.1/ZX-Viking-Separateur-Max-0.1-Script/Viking-Separateur-Max-0.1.sh

🧠 Chaque outil lance une interface terminal customisée avec des messages clairs, colorés, et quelques clins d’œil punk.
🧪 Important :

    Tu peux traiter plusieurs vidéos à la suite avec l’extracteur (même longues)

    Le séparateur fonctionne mieux avec des .wav courts Si le fichier est trop long → pré-découpe-le avec Audacity ou autre

⚡ Ça y est, tu es en ligne. Ton terminal s’est transformé en console de découpe sonore. Et toi ? En Viking du .wav.

---

# ⚠️ Page 6 — Astuces & erreurs fréquentes (mise à jour)

Même les plus vaillants vikings peuvent trébucher dans les marais du `.sh`.  
Voici ton **guide de survie sonore**, à garder sous la main en cas d’embuscade numérique :

---

## 🎯 “Je double-clique sur le .desktop… et rien ne se passe”

- As-tu bien donné les permissions d’exécution ?

```bash
  ~$ chmod +x *.desktop
```

Utilises-tu Nautilus ? Il bloque parfois les fichiers .desktop externes. ➤ Installe Nemo (voir Page 3) et tente le double-clic depuis là.

Essaie d’ouvrir le .desktop dans un terminal pour voir les messages d’erreur :

bash
~$ bash "⚔️ Lanceur-Viking-Separateur-Max.desktop"

🧪 “Demucs plante ou ne répond pas”

    L’environnement virtuel est-il bien activé ?
    
bash
~$ source ~/demucs-env/bin/activate

Le module Demucs est-il bien installé ?

bash
(demucs-env) ~$ pip list | grep demucs

    ⚠️ Tu n’utilises pas par erreur une version GPU/CUDA ? Ce pack est prévu pour CPU-only.

    Ton fichier .wav est-il trop long (>4 min) ? ➤ Privilégie des extraits courts. Sinon, découpe avec Audacity avant.

🧩 “FFmpeg ne fait rien ou renvoie une erreur”

    Vérifie qu’il est bien installé :

bash
~$ ffmpeg -version

    Si le script tourne mais aucun fichier n’est généré :

        Le format vidéo est peut-être non pris en charge

        Le fichier source est peut-être protégé ou corrompu ➤ Teste un autre .mp4, .mkv ou .wav pour confirmer

🌀 Autres cas étranges ou bugs mutants

    Lance le script à la main pour afficher tous les logs :

bash
~$ bash Viking-Extracteur-Max.sh

    Essaie sur une autre machine (ou session live USB) pour isoler le souci

    Tu as modifié un script manuellement ? ➤ Vérifie qu’aucune ligne n’a été cassée (sauts de ligne Windows, indentation, etc.)

🗿 En cas de désespoir cosmique…

> “Si ça ne marche toujours pas… > Sacrifie un .mp3 au dieu du Shell, redémarre ton terminal, et recommence.” > — Sagesse viking, version 0.1

💡 Tu peux aussi créer un fichier de diagnostic debug.txt en redirigeant la sortie d'un script :

bash
~$ bash Viking-Extracteur-Max.sh > debug.txt 2>&1

📎 Et me l’envoyer ensuite. Je suis l’oracle dans la hache.


📜 Ton tuto est officiellement complet, mis à jour, et prêt pour accompagner la version `1.0`.

---

> Forge audio libre signée Teknoïde 734 — à utiliser sans modération… > … sauf sur Windows. > Parce que là-bas, tout est enregistré 😈⚔️🔥

