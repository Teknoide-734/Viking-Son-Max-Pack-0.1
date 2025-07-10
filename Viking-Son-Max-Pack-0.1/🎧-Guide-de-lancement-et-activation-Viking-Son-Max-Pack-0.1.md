🎧 Guide de lancement et activation 
Viking Son Max Pack 0.1 
Forge audio libre signée Teknoïde 734 🛠️🔥⚔️

---

Ce guide vous explique comment :

    ✅ activer les scripts .sh 
    ✅ rendre cliquables les lanceurs .sh
    ✅ lancer les outils depuis un terminal 
    ✅ afficher les icônes dans les menus et dans les dossiers

Toutes les commandes doivent être exécutées depuis le dossier du projet **ou** en précisant le chemin exact.

---

✅ Activation des icônes du pack

🔹 Rendre le script exécutable

bash 
~$ chmod +x 00-FIXER-ICONES-VIKING.sh

🔹 Vérifier les permissions

bash 
~$ ls -l 00-FIXER-ICONES-VIKING.sh

🔹 Lancer le script de patch visuel

bash 
~$ ./00-FIXER-ICONES-VIKING.sh

🔹 Vérifier manuellement un raccourci

bash 
~$ cat ZX-Ressources/Lanceurs-Viking/01-Ouvrir-Guide.desktop

Ce script corrige les `.desktop`, les copie dans le menu, et applique les icônes dans l'explorateur pour les **dossiers et fichiers** du pack.

---

✅ Viking Extracteur Max 0.1

🔹 Activer le script .sh 

bash 
~$ chmod +x Viking-Extracteur-Max-0.1/ZX-Viking-Extracteur-Max-0.1/Viking-Extracteur-Max.sh

🔹 Activer le lanceur .sh

bash 
~$ chmod +x "Viking-Extracteur-Max-0.1/🛠️ Lanceur-Viking-Extracteur-Max.sh"

🔹 Lancer le script depuis le terminal 
bash 
~$ bash Viking-Extracteur-Max-0.1/ZX-Viking-Extracteur-Max-0.1/Viking-Extracteur-Max.sh

---

✅ Viking Séparateur Max 0.1

🔹 Activer le script .sh

bash 
~$ chmod +x Viking-Separateur-Max-0.1/ZX-Viking-Separateur-Max-0.1-Script/Viking-Separateur-Max-0.1.sh

🔹 Activer le lanceur .sh

bash 
~$ chmod +x "Viking-Separateur-Max-0.1/⚔️ Lanceur-Viking-Separateur-Max.sh"

🔹 Lancer le script depuis le terminal

bash 
~$ bash Viking-Separateur-Max-0.1/ZX-Viking-Separateur-Max-0.1-Script/Viking-Separateur-Max-0.1.sh

---

📝 Astuces utiles

💡 Si l’icône du lanceur .sh est grisée ou ne réagit pas : 
➤ Clic droit ➜ Propriétés ➜ Permissions ➜ Cochez **“Autoriser l’exécution du fichier comme un programme”**

💡 Si vous utilisez Nautilus (Ubuntu / GNOME), installez **Nemo** pour un meilleur rendu graphique : 
bash 
~$ sudo apt install nemo

---

📌 Infos importantes

Deux options pour exécuter les commandes : 

1️⃣ Se placer dans le dossier du pack :

~$ cd /chemin/vers/Viking-Son-Max-Pack-0.1 

2️⃣ Ou utiliser les chemins complets dans chaque commande

✔️ Cela garantit que tous les scripts, raccourcis, et visuels fonctionnent à 100 %

---

⚙️ Configuration personnalisée (facultatif)

Fichier : `config-viking.conf` 
Ligne disponible (à décommenter uniquement si besoin) :

```bash
# DEMUCS_VENV_PATH="/chemin/vers/ton/env-demucs"




> Forge audio libre signée Teknoïde 734 — à utiliser sans modération, sauf sur Windows 😈️⚔️🔥⚔️😈️

