# 📦 Bonus de fin de raid — conseils malins & notes de terrain

---

## 🗃️ Range tes grimoires `.md` dans la crypte

Une fois que tu as lu les fichiers `.md`, pense à les **glisser dans le dossier** :

ZX-Ressources/


🔒 Ça les garde accessibles, propres, et ça évite qu’ils te sautent à la gorge à chaque ouverture de dossier.
Tu sais où les retrouver. Eux aussi savent où dormir.

---

## 🎥 Concernant le dossier `Viking-Extracteur-Max-0.1/Entrée` :

- Tu peux balancer **plusieurs vidéos longues**, même des fichiers costauds.
- L’outil les traite **un à un**, tranquillement et sans broncher.
- **Bonus surprise** : si ton fichier vidéo était un peu abîmé, il sera **réparé automatiquement** au passage !
  ➤ Si la vidéo récupéré sonne mieux que l’original… jette la vieille carcasse et garde la nouvelle purifié 😈

---

## 🎧 Concernant le dossier `Viking-Separateur-Max-0.1/Entrée` :

- ⚠️ Évite les `.wav` trop longs (au-delà de ~5 min)
  → Demucs **s’essouffle** face aux sagas musicales de 10 minutes

- Prépare plutôt des **extraits bien choisis** avec un logiciel de découpe audio comme **Audacity**
  → Oui, ça prend 3 minutes. Mais c’est un hommage au dieu du sample bien net.

- Tu peux mettre **plusieurs fichiers à la fois** → ils seront traités **un par un**

- Et même là… petite touche ninja :
  ➤ Chaque fichier est **réparé après séparation**, pour éviter pertes de qualité ou artefacts bizarres

---

## 🖥️ Et pendant le rituel...

> 🧠 Laisse la **fenêtre de Terminal** ouverte pendant tout le traitement.

Pourquoi ?
Parce qu’à la fin, chaque outil t’envoie un **message badass et clair** pour dire que le taf est terminé :

MISSION ACCOMPLIE // EXTRACTION TERMINÉE // VA À LA PROCHAINE PISTE


🔥 Bref, tu sais quand c’est fini, **et tu souris en plus**.

---

🧾 **Récap' :**
- Range tes docs dans `ZX-Ressources/`
- Mets ce que tu veux dans les dossiers `Entrée/`, mais respecte les recommandations
- Et lis les messages du terminal : **ils font partie de l’expérience.**

> Forge audio libre. Conseils punk. Terminal qui parle.
> C’est pas juste un pack, c’est un équipage.

---

---

## 🧪 Pour les bidouilleurs vaillants — bonus avancés

Tu te sens l’âme d’un Viking alchimiste du `.sh` ?
Tu veux **pousser FFmpeg et Demucs au-delà de leurs limites par défaut** ?
Voici quelques pistes pour ceux qui osent tourner les runes à l’envers 🔥

---

### 🎛️ Modifier les paramètres de l’Extracteur

Par défaut, le script `Viking-Extracteur-Max` sort du `.wav` **qualité brute berserker**.
Mais si tu veux un autre format (genre `.flac`, `.ogg`, `.mp3` en compression maîtrisée), tu peux éditer la ligne FFmpeg dans le script :

```bash
ffmpeg -i "input.mp4" -vn -acodec pcm_s16le "sortie.wav"
```

➡️ Tu peux remplacer pcm_s16le par :

    libmp3lame → pour générer du .mp3

    libvorbis → pour du .ogg

    flac → pour du .flac sans perte

Et bien sûr changer l’extension de sortie dans la même ligne (sortie.flac etc.)

---

🧠 Déverrouiller les 5 stems de Demucs

La version Demucs utilisée dans le pack fait une séparation en 2 stems (voix + reste). Mais Demucs est aussi capable de séparer en 4 voire 5 pistes distinctes :

    vocals (voix)

    drums (batterie)

    bass (basse)

    other (reste)

    noise (optionnel sur certains modèles)

🧩 Tu peux activer ça en modifiant l’appel Demucs dans le script séparateur :

bash
demucs --two-stems=vocals fichier.wav

➡️ Remplace par :

bash
demucs fichier.wav

➡️ Ou pour forcer 4 stems avec un modèle précis :

bash
demucs --model=htdemucs fichier.wav


📦 Résultat : un dossier /separated/htdemucs/fichier/ contenant toutes les pistes individuellement.

⚠️ Attention : plus de stems = plus de calculs, et ton processeur va chauffer comme une forge à blast beats.

📌 Rappel :

> 🔓 Tu peux éditer les scripts .sh avec n’importe quel éditeur texte (VSCodium no télémetrie 👍️, VS Code, Gedit, Nano...) > ➤ Teste, clone, sauvegarde, bricole… et si t’as fait un mod stylé, propose un fork sur GitHub 💥 Mais stylé a ta sauce pas la mienne !!! 😡️😈️⚔️🔥⚔️😈️😡️

🎁 Ce pack est un outil, mais aussi une base d’expérimentation. Alors à toi de triturer, transformer, transcender.

> “Ce que tu ne vois pas dans le menu, c’est pas bloqué. C’est juste un potentiel à débloquer.” > — Sagesse Bash & Barbe Tressée

---


> Forge audio libre signée Teknoïde 734 — à utiliser sans modération… > … sauf sur Windows. > Parce que là-bas, tout est enregistré 😈⚔️🔥

