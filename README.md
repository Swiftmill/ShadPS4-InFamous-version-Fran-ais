# inFAMOUS Second Son — shadPS4 (Version Française & Clavier AZERTY)

Version pré-configurée de l'émulateur **shadPS4** (optimisée pour *inFAMOUS Second Son*), paramétrée spécifiquement en **Français intégral** (voix & sous-titres) et adaptée pour le **clavier AZERTY français + souris**.

Ce dépôt inclut l'émulateur, tous les fichiers de configuration, les textures de touches adaptées en AZERTY (`ZQSD`, `A`, `E`) ainsi qu'un outil d'extraction automatique pour décompresser votre package (`.pkg`) de jeu en un clic.

> **Aucun fichier de jeu protégé sous copyright n'est inclus.** Vous devez posséder votre propre copie/dump du jeu *inFAMOUS Second Son* (Code région recommandé : `CUSA00004` avec la mise à jour v1.07).

---

## Sommaire
1. [Installation rapide en 3 étapes](#installation-rapide-en-3-étapes)
2. [Commandes et Touches (Clavier AZERTY + Souris)](#commandes-et-touches-clavier-azerty--souris)
3. [Passages Spéciaux & Astuces Cruciales](#passages-spéciaux--astuces-cruciales)
   - [Scène du tag / Bombe de peinture ("Hold Wireless Controller Sideways")](#1-scène-du-tag--bombe-de-peinture-hold-wireless-controller-sideways)
   - [Delsin est tombé dans l'eau ("Regagner le rivage")](#2-delsin-est-tombé-dans-leau-regagner-le-rivage)
4. [Raccourcis de l'émulateur](#raccourcis-de-lémulateur)
5. [Dépannage & Performances](#dépannage--performances)

---

## Installation rapide en 3 étapes

### 1. Télécharger ce dossier
Clonez ce dépôt ou téléchargez l'archive ZIP depuis GitHub :
```bash
git clone https://github.com/Swiftmill/ShadPS4-InFamous-version-Fran-ais.git
```

### 2. Décompresser le jeu (PKG)
1. Prenez votre fichier de jeu (ex: `[SPSX]-InFamous.Second.Son-CUSA00004-EUR-Game-Update-v1.07-PS4.pkg`).
2. **Glissez-déposez le fichier `.pkg` directement sur le script `installer_inFamous.bat`**  
   *(Ou double-cliquez sur `installer_inFamous.bat` et collez le chemin de votre `.pkg`).*
3. Le script va extraire automatiquement les ~24 Go de données dans le dossier `user\game_data\CUSA00004` et configurer le chemin de lancement dans `shadps4-game.txt`.
4. L'opération prend généralement entre 2 et 5 minutes.

### 3. Lancer le jeu
Double-cliquez simplement sur **`shadPS4.exe`**. Le jeu se lancera directement en plein écran, en français, avec les contrôles AZERTY pré-configurés !

---

## Commandes et Touches (Clavier AZERTY + Souris)

Toutes les touches ont été remappées pour les claviers AZERTY français. Les textures du tutoriel en jeu affichent également les icônes correspondantes (`ZQSD`, `A`, `E`).

### Déplacements & Caméra
| Action | Touche Clavier / Souris | Équivalent Manette PS4 |
| :--- | :--- | :--- |
| **Avancer** | `Z` | Stick Gauche Haut |
| **Reculer** | `S` | Stick Gauche Bas |
| **Aller à gauche** | `Q` | Stick Gauche Gauche |
| **Aller à droite** | `D` | Stick Gauche Droite |
| **Orienter la caméra** | `Mouvement de la Souris` | Stick Droit |
| **Viser (zoom)** | `Clic Droit (maintenir)` | Gâchette L2 |
| **Tirer (pouvoir)** | `Clic Gauche` | Gâchette R2 |

### Actions & Pouvoirs
| Action | Touche Clavier / Souris | Équivalent Manette PS4 |
| :--- | :--- | :--- |
| **Sauter / Escalader** | `Espace` | Croix ($\times$) |
| **Dash / Sprint de fumée** | `Shift Gauche` | Rond ($\bigcirc$) |
| **Attaque de mêlée / Coup de chaîne** | `C` | Carré ($\square$) |
| **Pouvoir Karmique / Attaque spéciale** | `F` | Triangle ($\triangle$) |
| **Pouvoir spécial / Missile de soufre** | `A` | Gâchette L1 |
| **Tir lourd de fumée** | `E` | Gâchette R1 |
| **Touchpad gauche (Interagir / Fumée)** | `R` | Clic Pavé Tactile Gauche |
| **Touchpad droit (Interagir / Sortir de l'eau)** | `G` | Clic Pavé Tactile Droit |
| **Pause / Menu du jeu** | `Entrée` | Touche Options |

---

## Passages Spéciaux & Astuces Cruciales

### 1. Scène du tag / Bombe de peinture ("Hold Wireless Controller Sideways")

Dans le tutoriel et lors des scènes de graffitis, le jeu vous demande de tourner la manette à l'horizontale, de secouer la bombe et de peindre. Voici la manipulation exacte au clavier/souris :

1. **Activer le capteur de mouvement / gyroscope** :  
   Appuyez sur la touche **`X`** du clavier. Le pointeur de la souris contrôle maintenant l'inclinaison/la visée de la bombe de peinture.
2. **Tourner la bombe à l'horizontale** :  
   **Maintenez la touche `W` enfoncée**. Delsin tourne alors la bombe de peinture sur le côté.
3. **Secouer la bombe de peinture** :  
   Tout en maintenant ou en tapotant rapidement **`W`** (ou en tapotant **`X`**), vous entendrez le bruit de la bille dans la bombe de peinture qui se mélange.
4. **Peindre le graffiti** :  
   Une fois le pochoir affiché sur le mur, maintenez le **`Clic Droit`** (ou `Clic Gauche`) de la souris et balayez les zones à peindre avec votre souris.
5. **Sortir du mode capteur** :  
   Une fois le tag terminé, réappuyez sur **`X`** pour repasser en mode visée caméra standard si nécessaire.

---

### 2. Delsin est tombé dans l'eau ("Regagner le rivage")

> [!TIP]
> Delsin ne sait pas nager ! S'il tombe dans l'eau, il s'agite et un pictogramme avec une empreinte digitale apparaît avec le texte **"REGAGNER LE RIVAGE"**.
> 
> Pour sortir de l'eau et réapparaître sur la terre ferme : **Appuyez sur `R` ou `G`** (cela simule le clic sur le pavé tactile de la manette).

---

## Raccourcis de l'émulateur

| Raccourci | Action |
| :--- | :--- |
| `F11` | Basculer en mode Plein écran / Fenêtré |
| `F10` | Afficher / Masquer le compteur de FPS |
| `F3` | Ouvrir le panneau des paramètres de shadPS4 |
| `F8` | Recharger la configuration des touches à chaud |
| `F9` | Mettre l'émulateur en pause |
| `F12` | Prendre une capture d'écran |
| `Ctrl` + `Shift` + `Fin` | Quitter immédiatement l'émulateur |

---

## Dépannage & Performances

- **Compilateur de Shaders au démarrage :**  
  Au tout premier lancement du jeu ou lors de l'arrivée dans une nouvelle zone, l'émulateur compile les pipelines Vulkan. Cela peut occasionner quelques micro-saccades pendant 20 secondes, puis le jeu devient fluide (~60 à 100+ FPS selon votre carte graphique).
- **Carte Graphique recommandée :**  
  NVIDIA GeForce RTX 2060 / 3060 / 4060 ou supérieur (ou équivalent AMD Radeon RX 6600+) avec les derniers pilotes Vulkan installés.
- **Langue du jeu :**  
  Le fichier `user\custom_configs\CUSA00004.json` est déjà configuré avec `"console_language": 2` (Français).
