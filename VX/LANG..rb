def lang
  return $game_system.language == 0 ? LANG_ENG : LANG_FR
end

module LANG_ENG
  file = File.open("Data/Dialogs_ENG.lang", "rb")
  DIALOGS = file.readlines
  file.close
  DIALOGS.each {|l| l.delete!("\r\n")}
  G_STAGE_INFO = ["Stage ", "Last Stage", "Secret Stage", "Survival"]
  G_ZONE_INFO = ["Kourindou", "Forest of Magic", "Misty Lake", 
  "Scarlet Devil Mansion", "Youkai Mountain", "Underworld", 
  "Netherworld", "Nowhere Dimension", "Youkai Reunion", 
  "Border of Heaven", "Bamboo Forest", "Fire Altar", "Water Altar", 
  "Wind Altar", "Earth Altar", "Garden of the Sun"]
  S_BASE = ["ATK", "DEF", "DEX", "HP", "MP", "SP", "Guard Efficiency", 
  "Instant Cast", "Cast Speed", "Hyper Duration", "Resurrection Speed", 
  "Critical Hit Power", "HP Regen", "MP Regen", "SP Regen", 
  "Fire Power", "Water Power", "Wind Power", "Earth Power", 
  "Fire Resistance", "Water Resistance", "Wind Resistance", "Earth Resistance", 
  "Poison Resistance", "Stun Resistance", "Weakening Resistance", 
  "Mutism Resistance", "Freezing Resistance", "Broken Guard Resistance", 
  "Recovering Resistance", "Strengthening Resistance", "Protection Resistance", 
  "Invincibility Resistance", "EXP Gain", "AP Gain", "Flask Drop Rate", 
  "Hyper Orb Drop Rate", "Chance to Negate Damage Taken", "Chance to Ignore Enemy Defense", 
  "Combo Effect: Poison", "Combo Effect: Stun", "Combo Effect: Weaken", 
  "Combo Effect: Mute", "Combo Effect: Freeze", "Super Combo", 
  "Interruption Immunity", "Auto Recover Effect", "Survivor Effect", 
  "We found all the souls, so now let's party!", 
  "I'll never get tired of beating youkais!", 
  "Why didn't Rinnosuke sell this thing earlier?"]
  S_TITLE = ["NEW GAME", "LOAD GAME", "SETTINGS", "Normal", "Hard", "Lunatic"]
  S_SHOP = ["Elem", "LV", "Next", " AP", "Value", "STATS", "SKILLS", 
  " SP", "Req Lv ", "Are you sure you want to buy"]
  S_ZONE_SELECTION = ["CONDITIONS", "- Hold ", " Wandering Souls", "- Finish "]
  S_INFO = [" \0[1]reached\nlevel \0[4]", "You got a weapon!\n\1[", 
  "You got an accessory!\n\1[", "You got a\n\1[", "]\0[7]Wandering Soul\0[1]!", 
  " \0[1]\nreached level \0[4]", " \0[1]\nreached level \0[4]", 
  "A new skill\nis available!"]
  S_STAGE_INFO = ["STAGE CLEARED!", "Hidden Soul found!", 
  "Stage finished within ", "Stage finished without Spellcards!", 
  "Stage finished without dying!", "Stage finished with one character!"]
  S_MISCELLANEOUS = ["- Reach the goal!", "- Kill all the enemies!", 
  "- Take less than ", " damage!", "- Deal more than ", "- Finish within ", 
  " seconds!", "Main Hall", "Hall 1: Purification Hall", 
  "Hall 2: Contemplation Hall", "Hall 3: Redemption Hall", 
  "Hall 4: Absolution Hall", "Hall 5: Damnation Hall", 
  "Hall 6: Salvation Hall", "Hall 7: Devotion Hall", "- FIRST WAVE -", 
  "- SECOND WAVE -", "- THIRD WAVE -", "- FOURTH WAVE -", "- FIFTH WAVE -", 
  "- SIXTH WAVE -", "- ENDLESS WAVE -", "You defeated all the youkais!", 
  "Stronger youkais are coming!", "LEVEL ", "You failed...", 
  "Main Corridor: Eternity Path", "Choose a reward!"]
  S_MENU = ["Equip", "Status", "Settings", "Play Time:", 
  "Stage Time: %d:%02d", "LV", "Next", " EXP", "HP", "MP", "SP", 
  "Elem", "LV", "Next", " AP", "Value", "STATS", "SKILLS", 
  " SP", "Req Lv ", "Total", "STATS", "ELEMENTS", "STATES", "EQUIPMENT", 
  "Attack", "Defense", "Dexterity", "Critical Hit Power", "Guard Efficiency", 
  "Cast Speed", "Resurrection Speed", "Hyper Duration", 
  "HP Regen Speed", "MP Regen Speed", "SP Regen Speed", 
  "EXP Gain", "AP Gain", "Flask Drop Rate", "Hyper Orb Drop Rate", 
  "Damage Negation Chance", "Defense Ignoration Chance", 
  "Combo Effect: Poison", "Combo Effect: Stun", "Combo Effect: Weaken", 
  "Combo Effect: Mute", "Combo Effect: Freeze", "Instant Cast", 
  "Super Combo", "Interruption Immunity", "Auto Recover Effect", 
  "Survivor Effect", "SKILLS", "SPELLCARDS"]
  S_SETTINGS = ["Language", "Preload Graphics", "Advanced Effects", 
  "Music Volume", "Sound Volume", "Damage Display", "Player Damage", 
  "Enemy Damage", "Enemy HP Bar", "Keyboard Config", "Joystick Config", 
  "Quit Game", "English", "Français", "All", "Bullets Only", "None", 
  "Enable", "Disable", "Normal", "Classic", "Down/Guard", "Left", "Right", 
  "Up", "Menu/Cancel", "Cast", "Jump/Confirm", "Attack/Cancel", 
  "Enable/Disable Hyper Mode", "Switch Char./Previous Char.", 
  "Switch Char./Next Char.", "Default Config"]
  S_SAVE = ["Play Time:", "Normal", "Hard", "Lunatic", "LV", "No Data"]
  S_STAGE = ["- Defeat waves of enemies", " in Chaos Mode", 
  "- Finish the stage", "- Find a Hidden Soul", "- Finish the stage within ", 
  "- Finish the stage without Spellcards", "- Finish the stage without dying", 
  "- Finish the stage with one character", "- Open the Silver Chest", 
  "Start Stage", "Start Stage (Normal Mode)", "Start Stage (Chaos Mode)", 
  "Leave Stage"]
  S_CREDITS = [["PROGRAMMING, GAME DESIGN, STORY", "Estheone"], 
  ["GRAPHICS", "Estheone", "Zeus81", "Daheji", "Benben", 
  "Tasogare Frontier (Touhou Fighting Games)", "LION HEART (Mystical Chain)", 
  "Wizet (Maple Story)", "Rareware (Donkey Kong Country)", 
  "Konami (Castlevania SotN)", "Enterbrain (RPG Maker)", "And many more..."], 
  ["MUSIC", "ZUN"], ["SOUND EFFECTS", "Estheone", "ZUN", "Enterbrain"], 
  ["RIPPERS", "Random Talking Bush", "DarkOverord", "Mageker", "Boo", 
  "Azu", "Tonberry2k", "Simion32"], 
  ["SPECIAL THANKS", "Kumquat (Testing, Proofreading, v1.02)", 
  "Zeus81 (Testing, Script Input Ultimate)", 
  "Ephy (Testing, Number One Fan)", "ZUN", "        ", "And you!"], 
  ["WANDERING SOULS", "A Touhou fan game"]]
  SC_SHOP = ["Welcome!", "I've got some new stuff that might interest you.", 
  "Thank you, dear customer!", "Sorry, I'm out of stock.", 
  "ATK+1 FOR ALL", "DEF+1 FOR ALL"]
  SKILL_NAME = []
  SKILL_NAME[21] = "Fire and Ice Orbs"
  SKILL_NAME[22] = "Hurricane Zone"
  SKILL_NAME[23] = "Mystic Orbs"
  SKILL_NAME[24] = "Fantasy Seals"
  SKILL_NAME[25] = "Earth's Wrath"
  SKILL_NAME[26] = "Divine Intervention"
  SKILL_NAME[27] = "Hakurei Amulets"
  SKILL_NAME[31] = "Magic Missile Launchers"
  SKILL_NAME[32] = "Master Spark"
  SKILL_NAME[33] = "Great Geyser"
  SKILL_NAME[34] = "Flight of the Witch"
  SKILL_NAME[35] = "Purifying Aura"
  SKILL_NAME[36] = "Big Bang"
  SKILL_NAME[37] = "Love Beam Festival"
  SKILL_NAME[41] = "Hell Corridor"
  SKILL_NAME[42] = "Lightning Balls"
  SKILL_NAME[43] = "Deadly Kunais"
  SKILL_NAME[44] = "Shadow Paradox"
  SKILL_NAME[45] = "Cursed Dagger"
  SKILL_NAME[46] = "Blade Downfall"
  SKILL_NAME[47] = "Telluric Clones"
  SKILL_NAME[51] = "Divine Spell: Solar Flare"
  SKILL_NAME[52] = "Divine Spell: Corrupted Bubbles"
  SKILL_NAME[53] = "Holy Sign: Rainbow Tornado"
  SKILL_NAME[54] = "Celestial Treasure: Sacred Tree"
  SKILL_NAME[55] = "Magic Sign: Shadow Fire"
  SKILL_NAME[56] = "Magic Sign: Fountain of Youth"
  SKILL_NAME[57] = "Magicannon: Typhoon Spark"
  SKILL_NAME[58] = "Last Resort: Armageddon"
  SKILL_NAME[59] = "Secret Maid Art: Rising Spirit"
  SKILL_NAME[60] = "Secret Maid Art: Iceberg Stream"
  SKILL_NAME[61] = "Light Speed: Impending Shock"
  SKILL_NAME[62] = "Strange Art: Temporal Barrier"
  SKILL_NAME[103] = "Earthquake"
  SKILL_NAME[115] = "Crystal Bombs"
  SKILL_NAME[119] = "Evil Butterflies"
  SKILL_NAME[130] = "Puppeteer Sign: Dolls' Rampage"
  SKILL_NAME[136] = "Fire Sign: Spontaneous Combustion"
  SKILL_NAME[149] = "Lunar Eyes: Killer Rabbit's Ambush"
  SKILL_NAME[155] = "Frost Sign: Snow Gun"
  SKILL_NAME[156] = "Frost Sign: Frost Lasers"
  SKILL_NAME[159] = "Ice Sign: Ice Age"
  SKILL_NAME[160] = "Ice Sign: Glacial Eruption"
  SKILL_NAME[171] = "Wind Sign: Eternal Tornado"
  SKILL_NAME[172] = "Wind God: Sonic Missiles"
  SKILL_NAME[180] = "Colorful Sign: Rainbow Rain"
  SKILL_NAME[184] = "Pyromania"
  SKILL_NAME[193] = "Earth Sign: Rockfall"
  SKILL_NAME[194] = "Fire Sign: Incandescence"
  SKILL_NAME[195] = "Water Sign: Submarine Beings"
  SKILL_NAME[196] = "Wind Sign: Eyewalls"
  SKILL_NAME[199] = "Curse #158"
  SKILL_NAME[200] = "Camouflage"
  SKILL_NAME[202] = "Curse #666: Death Sentence"
  SKILL_NAME[208] = "Tempest Sign: Raijin's Call"
  SKILL_NAME[209] = "Magma Sign: Amaterasu's Drops"
  SKILL_NAME[225] = "Little Sister's Art: Four of a Kind"
  SKILL_NAME[226] = "Vampire Art: Night Raid"
  SKILL_NAME[245] = "Wind Sign: Dual Tornado"
  SKILL_NAME[246] = "Wind God: Tengu's Sonic Missiles"
  SKILL_NAME[250] = "KA-MI-KA-ZE"
  SKILL_NAME[257] = "Ice Sign: Micro Blizzard"
  SKILL_NAME[263] = "Greetings of the Thunder Gods"
  SKILL_NAME[269] = "Storm Sign: Electrical Overload"
  SKILL_NAME[270] = "Revitalizing Gleam"
  SKILL_NAME[274] = "Sea Dragon Sign: Seabed Undulation"
  SKILL_NAME[275] = "Wind Dragon Sign: Heaven's Illusion"
  SKILL_NAME[282] = "Native God: Ethereal Snakes"
  SKILL_NAME[283] = "Frog Sign: Frogs in the Tempest"
  SKILL_NAME[288] = "Asteroid Belt"
  SKILL_NAME[300] = "Contaminated Spheres"
  SKILL_NAME[314] = "Drunk Sign: Four Sakes of Destiny"
  SKILL_NAME[315] = "Oni Sign: Mist Clones"
  SKILL_NAME[318] = "Earth Sign: Thousand Stalactites"
  SKILL_NAME[319] = "Earth Sign: Chaotic Rocks"
  SKILL_NAME[327] = "Explosive Runic Orbs"
  SKILL_NAME[338] = "Blinding Light"
  SKILL_NAME[339] = "Fire Sign: Utter Incandescence"
  SKILL_NAME[345] = "Nuclear Sign: Atomic Fission"
  SKILL_NAME[346] = "Atomic Fire: Unstable Particles"
  SKILL_NAME[359] = "Invocation Sign: Shinigami's Orb"
  SKILL_NAME[360] = "Death Sign: Nothingness Bullets"
  SKILL_NAME[364] = "Death Sign: Ethereal Bullets"
  SKILL_NAME[371] = "The Hungry Tribe"
  SKILL_NAME[375] = "The Ethereal Tribe"
  SKILL_NAME[379] = "Wind Sign: Crossing of Beams"
  SKILL_NAME[380] = "Earth Sign: Terrestrial Rampage"
  SKILL_NAME[384] = "Countless Thorns"
  SKILL_NAME[388] = "Countless Ethereal Thorns"
  SKILL_NAME[403] = "Ghost Sign: Ghostly Half Raid"
  SKILL_NAME[412] = "Blossom Sign: Butterfly Rings"
  SKILL_NAME[413] = "Cherry Sign: Falling Petals"
  SKILL_NAME[414] = "Saigyouji Flawless Nirvana, First Phase"
  SKILL_NAME[415] = "Saigyouji Flawless Nirvana, Second Phase"
  SKILL_NAME[416] = "Saigyouji Flawless Nirvana, Last Phase"
  SKILL_NAME[419] = "Void Sign: Dark Eruption"
  SKILL_NAME[432] = "Void Sign: Shadow Conflagration"
  SKILL_NAME[436] = "The Shadow Dragon's Nest"
  SKILL_NAME[437] = "Dragon Sign: Wyvern's True Awakening"
  SKILL_NAME[475] = "Spear Stream"
  SKILL_NAME[494] = "Invocation Sign: Shadow Rift"
  SKILL_NAME[495] = "Last Boundary: Shatter Reality"
  SKILL_NAME[504] = "Taboo: Four of a Kind"
  SKILL_NAME[505] = "Colorful Sign: Rainbow Trap"
  SKILL_NAME[506] = "Forbidden Barrage: Rupture"
  SKILL_NAME[507] = "Little Sister's Art: Four of a Kind"
  SKILL_NAME[520] = "Vengeful Spirit: Path of the Dead"
  SKILL_NAME[521] = "Invocation Sign: Shinigami's Orb"
  SKILL_NAME[528] = "Invocation Sign: Shadow Rift"
  SKILL_NAME[542] = "Guardian's Last Duty: ERADICATION!"
  SKILL_NAME[547] = "Illuminations"
  SKILL_NAME[556] = "Death Sign: The Great Reaper"
  SKILL_NAME[557] = "Millionaire!"
  SKILL_NAME[563] = "Earth Sign: Heaven Pillars"
  SKILL_NAME[564] = "Celestial Art: Lethal Earth Ring"
  SKILL_NAME[570] = "Thunder Sign: Supreme Shock"
  SKILL_NAME[571] = "Celestial Art: Lethal Thunder Ring"
  SKILL_NAME[907] = "Hazardous Summoning"
  SKILL_NAME[908] = "Miraculous Breath"
  SKILL_NAME[909] = "The Four Elemental Pentagrams"
  SKILL_NAME[910] = "Greetings of the Thunder Gods"
  SKILL_NAME[917] = "The Crushing Cirno"
  SKILL_NAME[918] = "Frost Aura"
  SKILL_NAME[919] = "Short Ice Age"
  SKILL_NAME[920] = "Crystal Bombs"
  SKILL_NAME[927] = "Lunar Radiance"
  SKILL_NAME[928] = "Artificial Moon"
  SKILL_NAME[929] = "Stellar Gatling"
  SKILL_NAME[930] = "Lunar Eyes: Killer Rabbit's Ambush"
  SKILL_NAME[937] = "Scarlet Shuriken"
  SKILL_NAME[938] = "Midnight Assault"
  SKILL_NAME[939] = "Gungnir Spear"
  SKILL_NAME[940] = "Vampire Art: Night Raid"
  SKILL_NAME[947] = "Ephemeral Tornadoes"
  SKILL_NAME[948] = "Piercing Gust"
  SKILL_NAME[949] = "Tengu Rush"
  SKILL_NAME[950] = "Wind God: Tengu's Sonic Missiles"
  SKILL_NAME[957] = "Irradiated Meteor"
  SKILL_NAME[958] = "Radioactive Elements"
  SKILL_NAME[959] = "Supernovae"
  SKILL_NAME[960] = "Atomic Fire: Atomic Fission"
  SKILL_NAME[967] = "Sudden Death"
  SKILL_NAME[968] = "Sword Dance"
  SKILL_NAME[969] = "The Ten Kings' Swords"
  SKILL_NAME[970] = "Ghost Sign: Ghostly Half Raid"
  SKILL_NAME[977] = "Drunkard Breath"
  SKILL_NAME[978] = "Oni's Sake of Luck"
  SKILL_NAME[979] = "Seismic Waves"
  SKILL_NAME[980] = "Oni Sign: Mist Clones"
  SKILL_NAME[987] = "Danmaku Barrier"
  SKILL_NAME[988] = "Whirling Parasol"
  SKILL_NAME[989] = "Missiles from Nowhere"
  SKILL_NAME[990] = "Last Boundary: Shatter Reality"
end

module LANG_FR
  file = File.open("Data/Dialogs_FR.lang", "rb")
  DIALOGS = file.readlines
  file.close
  DIALOGS.each {|l| l.delete!("\r\n")}
  G_STAGE_INFO = ["Stage ", "Dernier Stage", "Stage Secret", "Survie"]
  G_ZONE_INFO = ["Magasin de Rinnosuke", "Forêt de la Magie", "Lac Brumeux", 
  "Manoir Scarlet", "Montagne Youkai", "Underworld", 
  "Netherworld", "Dimension de Nulle Part", "Réunion Youkai", 
  "Frontière du Paradis", "Forêt de Bambous", "Autel du Feu", "Autel de l'Eau", 
  "Autel du Vent", "Autel de la Terre", "Jardin du Soleil"]
  S_BASE = ["ATQ", "DEF", "DEX", "HP", "MP", "SP", "Efficacité Garde", 
  "Incant. Instantanée", "Vitesse Incant.", "Durée Hyper", "Vitesse Résurrection", 
  "Puissance Coups Crit.", "Regen HP", "Regen MP", "Regen SP", 
  "Puissance Feu", "Puissance Eau", "Puissance Vent", "Puissance Terre", 
  "Résistance Feu", "Résistance Eau", "Résistance Vent", "Résistance Terre", 
  "Résistance Poison", "Résistance Etourdissement", "Résistance Affaiblissement", 
  "Résistance Mutisme", "Résistance Gel", "Résistance Garde Brisée", 
  "Résistance Récupération", "Résistance Renforcement", "Résistance Protection", 
  "Résistance Invincibilité", "Gain EXP", "Gain AP", "Taux Potions Trouvés", 
  "Taux Orbes Hyper Trouvées", "Dégâts Subis Annulés", "Défense Ennemie Ignorée", 
  "Combo : Effet Poison", "Combo : Effet Etourdissement", "Combo : Effet Affaiblissement", 
  "Combo : Effet Mutisme", "Combo : Effet Gel", "Super Combo", 
  "Immunité Interruption", "Effet Auto Récupération", "Effet Survivant", 
  "Nous avons trouvé toutes les âmes, faisons la fête !", 
  "Je ne me lasserai jamais de vaincre des youkais !", 
  "Pourquoi Rinnosuke n'a-t-il pas vendu ce truc plus tôt ?"]
  S_TITLE = ["NOUVELLE PARTIE", "CHARGER PARTIE", "PARAMETRES", "Normal", "Difficile", "Lunatique"]
  S_SHOP = ["Elem", "NV", "Suivant", " AP", "Valeur", "STATS", "TECHS", 
  " SP", "Nv Req ", "Etes-vous sûr de vouloir acheter"]
  S_ZONE_SELECTION = ["CONDITIONS", "- Détenir ", " Ames Errantes", "- Finir "]
  S_INFO = [" \0[1]a atteint\nle niveau \0[4]", "Vous obtenez une arme !\n\1[", 
  "Vous obtenez un accessoire !\n\1[", "Vous obtenez une\n\1[", "]\0[7]Ame Errante\0[1] !", 
  " \0[1]\na atteint le niveau \0[4]", " \0[1]\na atteint le niveau \0[4]", 
  "Une nouvelle technique\nest disponible !"]
  S_STAGE_INFO = ["STAGE TERMINE !", "Ame Cachée Trouvée !", 
  "Stage Terminé en moins de ", "Stage Terminé sans utiliser de Spellcards !", 
  "Stage Terminé Sans Mourir !", "Stage Terminé avec un seul personnage !"]
  S_MISCELLANEOUS = ["- Atteindre l'objectif !", "- Tuer tous les ennemis !", 
  "- Subir moins de ", " dégâts !", "- Faire plus de ", "- Finir en moins de ", 
  " secondes !", "Hall Principal", "Hall 1 - Hall de la Purification", 
  "Hall 2 - Hall de la Contemplation", "Hall 3 - Hall de la Rédemption", 
  "Hall 4 - Hall de l'Absolution", "Hall 5 - Hall de la Damnation", 
  "Hall 6 - Hall de la Salvation", "Hall 7 - Hall de la Dévotion", "- PREMIERE VAGUE -", 
  "- DEUXIEME VAGUE -", "- TROISIEME VAGUE -", "- QUATRIEME VAGUE -", "- CINQUIEME VAGUE -", 
  "- SIXIEME VAGUE -", "- VAGUE INFINIE -", "Vous avez vaincu tous les youkais !", 
  "Des Youkais plus puissants sont en approche !", "NIVEAU ", "Vous avez échoué...", 
  "Couloir Principal - Voie de l'Eternité", "Choisissez une récomprense !"]
  S_MENU = ["Equipement", "Statut", "Paramètres", "Temps de jeu -", 
  "Temps du Stage - %d:%02d", "NV", "Suivant", " EXP", "HP", "MP", "SP", 
  "Elem", "NV", "Suivant", " AP", "Valeur", "STATS", "TECHS", 
  " SP", "Nv Req ", "Total", "STATS", "ELEMENTS", "EFFETS", "EQUIPEMENT", 
  "Attaque", "Défense", "Dextérité", "Puissance Coups Crit.", "Efficacité Garde", 
  "Vitesse Incant.", "Vitesse Résurrection", "Durée Hyper", 
  "Vitesse Regen HP", "Vitesse Regen MP", "Vitesse Regen SP", 
  "Gain EXP", "Gain AP", "Taux Potions Trouvés", "Taux Orbes Hyper Trouvées", 
  "Dégâts Subis Annulés", "Défense Ennemie Ignorée", 
  "Combo : Effet Poison", "Combo : Effet Etourdissement", "Combo : Effet Affaiblissement", 
  "Combo : Effet Mutisme", "Combo : Effet Gel", "Incant. Instantanée", 
  "Super Combo", "Immunité Interruption", "Effet Auto Récupération", 
  "Effet Survivant", "TECHNIQUES", "SPELLCARDS"]
  S_SETTINGS = ["Langue", "Préchargement Graphismes", "Effets Avancés", 
  "Volume Musique", "Volume Sons", "Affichage Dégâts", "Dégâts Joueur", 
  "Dégâts Ennemis", "Barre HP Ennemis", "Config. Clavier", "Config. Manette", 
  "Quitter le Jeu", "English", "Français", "Tous", "Projectiles seulement", "Aucun", 
  "Activé", "Désactivé", "Normal", "Classique", "Bas/Parer", "Gauche", "Droite", "Haut", 
  "Menu/Annuler", "Incanter", "Sauter/Confirmer", "Attaquer/Annuler", "Activer/Désactiver Mode Hyper", 
  "Changer Perso./Perso. Précédent", "Changer Perso./Perso. Suivant", "Config. par Défaut"]
  S_SAVE = ["Temps de Jeu -", "Normal", "Difficile", "Lunatique", "NV", "Pas de Données"]
  S_STAGE = ["- Finir vagues d'ennemis", " en Mode Chaos", 
  "- Finir Stage", "- Trouver une Ame Cachée", "- Finir Stage en moins de ", 
  "- Finir Stage sans Spellcards", "- Finir Stage sans mourir", 
  "- Finir Stage avec un seul personnage", "- Ouvrir le Coffre Argenté", 
  "Commencer Stage", "Commencer Stage (Mode Normal)", "Commencer Stage (Mode Chaos)", 
  "Quitter Stage"]
  S_CREDITS = [["PROGRAMMING, GAME DESIGN, STORY", "Estheone"], 
  ["GRAPHICS", "Estheone", "Zeus81", "Daheji", "Benben", 
  "Tasogare Frontier (Touhou Fighting Games)", "LION HEART (Mystical Chain)", 
  "Wizet (Maple Story)", "Rareware (Donkey Kong Country)", 
  "Konami (Castlevania SotN)", "Enterbrain (RPG Maker)", "And many more..."], 
  ["MUSIC", "ZUN"], ["SOUND EFFECTS", "Estheone", "ZUN", "Enterbrain"], 
  ["RIPPERS", "Random Talking Bush", "DarkOverord", "Mageker", "Boo", 
  "Azu", "Tonberry2k", "Simion32"], 
  ["SPECIAL THANKS", "Kumquat (Testing, Proofreading, v1.02)", 
  "Zeus81 (Testing, Script Input Ultimate)", 
  "Ephy (Testing, Number One Fan)", "ZUN", "        ", "And you!"], 
  ["WANDERING SOULS", "A Touhou fan game"]]
  SC_SHOP = ["Bienvenue !", "Je dispose de nouveaux objets qui pourraient vous intéresser.", 
  "Merci chère cliente !", "Désolé, je suis en rupture de stock.", 
  "ATQ+1 POUR TOUS", "DEF+1 POUR TOUS"]
  SKILL_NAME = []
  SKILL_NAME[21] = "Orbes de Feu et de Glace"
  SKILL_NAME[22] = "Zone d'Ouragan"
  SKILL_NAME[23] = "Orbes Mystiques"
  SKILL_NAME[24] = "Sceaux de Fantaisie"
  SKILL_NAME[25] = "Colère de la Terre"
  SKILL_NAME[26] = "Intervention Divine"
  SKILL_NAME[27] = "Amulettes Hakurei"
  SKILL_NAME[31] = "Lance-missiles Magique"
  SKILL_NAME[32] = "Master Spark"
  SKILL_NAME[33] = "Geyser Puissant"
  SKILL_NAME[34] = "Envol de la Sorcière"
  SKILL_NAME[35] = "Aura Purificatrice"
  SKILL_NAME[36] = "Big Bang"
  SKILL_NAME[37] = "Festival des Rayons de l'Amour"
  SKILL_NAME[41] = "Couloir de l'Enfer"
  SKILL_NAME[42] = "Balles d'Electricité"
  SKILL_NAME[43] = "Kunais Mortels"
  SKILL_NAME[44] = "Paradoxe de l'Ombre"
  SKILL_NAME[45] = "Dague Maudite"
  SKILL_NAME[46] = "Pluie de Lames"
  SKILL_NAME[47] = "Clones Telluriques"
  SKILL_NAME[51] = "Sort Divin : Eruption Solaire"
  SKILL_NAME[52] = "Sort Divin : Bulles Corrompues"
  SKILL_NAME[53] = "Signe du Sacré : Tornade Arc-en-ciel"
  SKILL_NAME[54] = "Trésor Céleste : Arbre Sacré"
  SKILL_NAME[55] = "Signe de la Magie : Feu de l'Ombre"
  SKILL_NAME[56] = "Signe de la Magie : Fontaine de Jouvence"
  SKILL_NAME[57] = "Magicannon : Typhon Spark"
  SKILL_NAME[58] = "Dernier Recours : Armageddon"
  SKILL_NAME[59] = "Art Secret : Regain de Combativité"
  SKILL_NAME[60] = "Art Secret : Flux d'Icebergs"
  SKILL_NAME[61] = "Vitesse de la Lumière : Choc Imminent"
  SKILL_NAME[62] = "Art Etrange : Barrière Temporelle"
  SKILL_NAME[103] = "Tremblement de Terre"
  SKILL_NAME[115] = "Bombes de Cristal"
  SKILL_NAME[119] = "Papillons Maléfiques"
  SKILL_NAME[130] = "Signe du Marionnettiste : Déchaînement des Poupées"
  SKILL_NAME[136] = "Signe du Feu : Combustion Spontanée"
  SKILL_NAME[149] = "Yeux Lunaires : Embuscade du Lapin Meurtrier"
  SKILL_NAME[155] = "Signe du Froid : Canon à Glace"
  SKILL_NAME[156] = "Signe du Froid : Lasers Glacés"
  SKILL_NAME[159] = "Signe de la Glace : Ere Glaciaire"
  SKILL_NAME[160] = "Signe de la Glace : Eruption Glaciale"
  SKILL_NAME[171] = "Signe du Vent : Tornade Eternelle"
  SKILL_NAME[172] = "Dieu du Vent : Missiles Soniques"
  SKILL_NAME[180] = "Signe des Couleurs : Pluie Arc-en-ciel"
  SKILL_NAME[184] = "Pyromania"
  SKILL_NAME[193] = "Signe de la Terre : Effritement"
  SKILL_NAME[194] = "Signe du Feu : Incandescence"
  SKILL_NAME[195] = "Signe de l'Eau : Etres Sous-Marins"
  SKILL_NAME[196] = "Signe du Vent : Yeux du Cyclone"
  SKILL_NAME[199] = "Malédiction n°158"
  SKILL_NAME[200] = "Camouflage"
  SKILL_NAME[202] = "Malédiction n°666 : Peine de Mort"
  SKILL_NAME[208] = "Signe de la Tempête : Appel de Raijin"
  SKILL_NAME[209] = "Signe du Magma : Larmes d'Amaterasu"
  SKILL_NAME[225] = "Art de la Cadette : Four of a Kind"
  SKILL_NAME[226] = "Art Vampire : Raid Nocturne"
  SKILL_NAME[245] = "Signe du Vent : Double Tornade"
  SKILL_NAME[246] = "Dieu du Vent : Missiles Soniques Tengu"
  SKILL_NAME[250] = "KA.MI.KA.ZE"
  SKILL_NAME[257] = "Signe de la Glace : Micro Blizzard"
  SKILL_NAME[263] = "Salutations des Dieux de la Foudre"
  SKILL_NAME[269] = "Signe de l'Orage : Surcharge Electrique"
  SKILL_NAME[270] = "Lueurs Revitalisantes"
  SKILL_NAME[274] = "Signe du Dragon des Mers : Ondulation des Fonds"
  SKILL_NAME[275] = "Signe du Dragon Volant : Illusion des Cieux"
  SKILL_NAME[282] = "Dieu Originaire : Serpent Ethérés"
  SKILL_NAME[283] = "Signe de la Grenouille : Grenouilles dans la Tempête"
  SKILL_NAME[288] = "Ceinture d'astéroïdes"
  SKILL_NAME[300] = "Sphères contaminées"
  SKILL_NAME[314] = "Signe de l'Ivresse : Quatre Sakes de la Destinée"
  SKILL_NAME[315] = "Signe Oni : Clones de Brume"
  SKILL_NAME[318] = "Signe de la Terre : Un Millier de Stalactites"
  SKILL_NAME[319] = "Signe de la Terre : Rochers Chaotiques"
  SKILL_NAME[327] = "Orbes Runiques Explosives"
  SKILL_NAME[338] = "Lumière Aveuglante"
  SKILL_NAME[339] = "Signe du Feu : Incandescence Absolue"
  SKILL_NAME[345] = "Signe Nucléaire : Fission Atomique"
  SKILL_NAME[346] = "Feu Atomique : Particules Instables"
  SKILL_NAME[359] = "Signe de l'Invocation : Orbe de Shinigami"
  SKILL_NAME[360] = "Signe de la Mort : Projectiles du Néant"
  SKILL_NAME[364] = "Signe de la Mort : Projectiles Ethérés"
  SKILL_NAME[371] = "La Tribu Affamée"
  SKILL_NAME[375] = "La Tribu Ethérée"
  SKILL_NAME[379] = "Signe du Vent : Croisement des Rayons"
  SKILL_NAME[380] = "Signe de la Terre : Déchaînement Terrestre"
  SKILL_NAME[384] = "Innombrables Epines"
  SKILL_NAME[388] = "Innombrables Epines Ethérées"
  SKILL_NAME[403] = "Signe du Fantôme : Assaut de la Moitié-Spectre"
  SKILL_NAME[412] = "Signe de la Floraison : Couronnes de Papillons"
  SKILL_NAME[413] = "Signe du Cerisier : Chute des Pétales"
  SKILL_NAME[414] = "Nirvana Parfait Saigyouji - 1ère Phase"
  SKILL_NAME[415] = "Nirvana Parfait Saigyouji - 2ème Phase"
  SKILL_NAME[416] = "Nirvana Parfait Saigyouji - Dernière Phase"
  SKILL_NAME[419] = "Signe du Vide : Eruption Noire"
  SKILL_NAME[432] = "Signe du Vide : Conflagration de l'Ombre"
  SKILL_NAME[436] = "Le Nid des Dragons de l'Ombre"
  SKILL_NAME[437] = "Signe du Dragon : Le Véritable Eveil de la Wyvern"
  SKILL_NAME[475] = "Torrent de Lances"
  SKILL_NAME[494] = "Signe de l'Invocation : Fissure de l'Ombre"
  SKILL_NAME[495] = "Ultime Frontière : Détruire la Réalité"
  SKILL_NAME[504] = "Taboo : Four of a Kind"
  SKILL_NAME[505] = "Signe des Couleurs : Piège Arc-en-ciel"
  SKILL_NAME[506] = "Barrage Interdit : Rupture"
  SKILL_NAME[507] = "Art de la Cadette : Four of a Kind"
  SKILL_NAME[520] = "Esprit Vengeur : Le Chemin des Morts"
  SKILL_NAME[521] = "Signe de l'Invocation : Orbe de Shinigami"
  SKILL_NAME[528] = "Signe de l'Invocation : Fissure de l'Ombre"
  SKILL_NAME[542] = "Dernier Devoir du Gardien : ERADICATION!"
  SKILL_NAME[547] = "Illuminations"
  SKILL_NAME[556] = "Signe de la Mort : La Grande Faucheuse"
  SKILL_NAME[557] = "Millionnaire !"
  SKILL_NAME[563] = "Signe de la Terre : Colonnes du Paradis"
  SKILL_NAME[564] = "Art Céleste : Anneau Létal de Terre"
  SKILL_NAME[570] = "Signe de la Foudre : Choc Suprême"
  SKILL_NAME[571] = "Art Céleste : Anneau Létal de Foudre"
  SKILL_NAME[907] = "Invocation Hasardeuse"
  SKILL_NAME[908] = "Souffle Miraculeux"
  SKILL_NAME[909] = "Les Quatre Pentagrammes Elémentaires"
  SKILL_NAME[910] = "Salutations des Dieux de la Foudre"
  SKILL_NAME[917] = "L'Ecrasante Cirno"
  SKILL_NAME[918] = "Aura Glacée"
  SKILL_NAME[919] = "Mini Ere Glaciaire"
  SKILL_NAME[920] = "Bombes de Cristal"
  SKILL_NAME[927] = "Rayonnement Lunaire"
  SKILL_NAME[928] = "Lune Artificielle"
  SKILL_NAME[929] = "Gatling Stellaire"
  SKILL_NAME[930] = "Yeux Lunaires : Embuscade du Lapin Meurtrier"
  SKILL_NAME[937] = "Shuriken Ecarlate"
  SKILL_NAME[938] = "Assaut de Minuit"
  SKILL_NAME[939] = "Lance Gungnir"
  SKILL_NAME[940] = "Art Vampire : Raid Nocturne"
  SKILL_NAME[947] = "Tornades Ephémères"
  SKILL_NAME[948] = "Rafale Perçante"
  SKILL_NAME[949] = "Rush Tengu"
  SKILL_NAME[950] = "Dieu du Vent : Missiles Soniques Tengu"
  SKILL_NAME[957] = "Météore Irradié"
  SKILL_NAME[958] = "Eléments Radioactifs"
  SKILL_NAME[959] = "Supernovae"
  SKILL_NAME[960] = "Signe Nucléaire : Fission Atomique"
  SKILL_NAME[967] = "Mort Subite"
  SKILL_NAME[968] = "Danse des Lames"
  SKILL_NAME[969] = "Les Epées des Dix Rois"
  SKILL_NAME[970] = "Signe du Fantôme : Assaut de la Moitié-Spectre"
  SKILL_NAME[977] = "Souffle de l'Ivrogne"
  SKILL_NAME[978] = "Sake de Chance d'Oni"
  SKILL_NAME[979] = "Ondes Sismiques"
  SKILL_NAME[980] = "Signe Oni : Clones de Brume"
  SKILL_NAME[987] = "Barrière Danmaku"
  SKILL_NAME[988] = "Parasol Tournoyant"
  SKILL_NAME[989] = "Missiles de Nulle Part"
  SKILL_NAME[990] = "Ultime Frontière : Détruire la Réalité"
end