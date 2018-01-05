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
  "Quit Game", "English", "Fran�ais", "All", "Bullets Only", "None", 
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
  G_ZONE_INFO = ["Magasin de Rinnosuke", "For�t de la Magie", "Lac Brumeux", 
  "Manoir Scarlet", "Montagne Youkai", "Underworld", 
  "Netherworld", "Dimension de Nulle Part", "R�union Youkai", 
  "Fronti�re du Paradis", "For�t de Bambous", "Autel du Feu", "Autel de l'Eau", 
  "Autel du Vent", "Autel de la Terre", "Jardin du Soleil"]
  S_BASE = ["ATQ", "DEF", "DEX", "HP", "MP", "SP", "Efficacit� Garde", 
  "Incant. Instantan�e", "Vitesse Incant.", "Dur�e Hyper", "Vitesse R�surrection", 
  "Puissance Coups Crit.", "Regen HP", "Regen MP", "Regen SP", 
  "Puissance Feu", "Puissance Eau", "Puissance Vent", "Puissance Terre", 
  "R�sistance Feu", "R�sistance Eau", "R�sistance Vent", "R�sistance Terre", 
  "R�sistance Poison", "R�sistance Etourdissement", "R�sistance Affaiblissement", 
  "R�sistance Mutisme", "R�sistance Gel", "R�sistance Garde Bris�e", 
  "R�sistance R�cup�ration", "R�sistance Renforcement", "R�sistance Protection", 
  "R�sistance Invincibilit�", "Gain EXP", "Gain AP", "Taux Potions Trouv�s", 
  "Taux Orbes Hyper Trouv�es", "D�g�ts Subis Annul�s", "D�fense Ennemie Ignor�e", 
  "Combo : Effet Poison", "Combo : Effet Etourdissement", "Combo : Effet Affaiblissement", 
  "Combo : Effet Mutisme", "Combo : Effet Gel", "Super Combo", 
  "Immunit� Interruption", "Effet Auto R�cup�ration", "Effet Survivant", 
  "Nous avons trouv� toutes les �mes, faisons la f�te !", 
  "Je ne me lasserai jamais de vaincre des youkais !", 
  "Pourquoi Rinnosuke n'a-t-il pas vendu ce truc plus t�t ?"]
  S_TITLE = ["NOUVELLE PARTIE", "CHARGER PARTIE", "PARAMETRES", "Normal", "Difficile", "Lunatique"]
  S_SHOP = ["Elem", "NV", "Suivant", " AP", "Valeur", "STATS", "TECHS", 
  " SP", "Nv Req ", "Etes-vous s�r de vouloir acheter"]
  S_ZONE_SELECTION = ["CONDITIONS", "- D�tenir ", " Ames Errantes", "- Finir "]
  S_INFO = [" \0[1]a atteint\nle niveau \0[4]", "Vous obtenez une arme !\n\1[", 
  "Vous obtenez un accessoire !\n\1[", "Vous obtenez une\n\1[", "]\0[7]Ame Errante\0[1] !", 
  " \0[1]\na atteint le niveau \0[4]", " \0[1]\na atteint le niveau \0[4]", 
  "Une nouvelle technique\nest disponible !"]
  S_STAGE_INFO = ["STAGE TERMINE !", "Ame Cach�e Trouv�e !", 
  "Stage Termin� en moins de ", "Stage Termin� sans utiliser de Spellcards !", 
  "Stage Termin� Sans Mourir !", "Stage Termin� avec un seul personnage !"]
  S_MISCELLANEOUS = ["- Atteindre l'objectif !", "- Tuer tous les ennemis !", 
  "- Subir moins de ", " d�g�ts !", "- Faire plus de ", "- Finir en moins de ", 
  " secondes !", "Hall Principal", "Hall 1 - Hall de la Purification", 
  "Hall 2 - Hall de la Contemplation", "Hall 3 - Hall de la R�demption", 
  "Hall 4 - Hall de l'Absolution", "Hall 5 - Hall de la Damnation", 
  "Hall 6 - Hall de la Salvation", "Hall 7 - Hall de la D�votion", "- PREMIERE VAGUE -", 
  "- DEUXIEME VAGUE -", "- TROISIEME VAGUE -", "- QUATRIEME VAGUE -", "- CINQUIEME VAGUE -", 
  "- SIXIEME VAGUE -", "- VAGUE INFINIE -", "Vous avez vaincu tous les youkais !", 
  "Des Youkais plus puissants sont en approche !", "NIVEAU ", "Vous avez �chou�...", 
  "Couloir Principal - Voie de l'Eternit�", "Choisissez une r�comprense !"]
  S_MENU = ["Equipement", "Statut", "Param�tres", "Temps de jeu -", 
  "Temps du Stage - %d:%02d", "NV", "Suivant", " EXP", "HP", "MP", "SP", 
  "Elem", "NV", "Suivant", " AP", "Valeur", "STATS", "TECHS", 
  " SP", "Nv Req ", "Total", "STATS", "ELEMENTS", "EFFETS", "EQUIPEMENT", 
  "Attaque", "D�fense", "Dext�rit�", "Puissance Coups Crit.", "Efficacit� Garde", 
  "Vitesse Incant.", "Vitesse R�surrection", "Dur�e Hyper", 
  "Vitesse Regen HP", "Vitesse Regen MP", "Vitesse Regen SP", 
  "Gain EXP", "Gain AP", "Taux Potions Trouv�s", "Taux Orbes Hyper Trouv�es", 
  "D�g�ts Subis Annul�s", "D�fense Ennemie Ignor�e", 
  "Combo : Effet Poison", "Combo : Effet Etourdissement", "Combo : Effet Affaiblissement", 
  "Combo : Effet Mutisme", "Combo : Effet Gel", "Incant. Instantan�e", 
  "Super Combo", "Immunit� Interruption", "Effet Auto R�cup�ration", 
  "Effet Survivant", "TECHNIQUES", "SPELLCARDS"]
  S_SETTINGS = ["Langue", "Pr�chargement Graphismes", "Effets Avanc�s", 
  "Volume Musique", "Volume Sons", "Affichage D�g�ts", "D�g�ts Joueur", 
  "D�g�ts Ennemis", "Barre HP Ennemis", "Config. Clavier", "Config. Manette", 
  "Quitter le Jeu", "English", "Fran�ais", "Tous", "Projectiles seulement", "Aucun", 
  "Activ�", "D�sactiv�", "Normal", "Classique", "Bas/Parer", "Gauche", "Droite", "Haut", 
  "Menu/Annuler", "Incanter", "Sauter/Confirmer", "Attaquer/Annuler", "Activer/D�sactiver Mode Hyper", 
  "Changer Perso./Perso. Pr�c�dent", "Changer Perso./Perso. Suivant", "Config. par D�faut"]
  S_SAVE = ["Temps de Jeu -", "Normal", "Difficile", "Lunatique", "NV", "Pas de Donn�es"]
  S_STAGE = ["- Finir vagues d'ennemis", " en Mode Chaos", 
  "- Finir Stage", "- Trouver une Ame Cach�e", "- Finir Stage en moins de ", 
  "- Finir Stage sans Spellcards", "- Finir Stage sans mourir", 
  "- Finir Stage avec un seul personnage", "- Ouvrir le Coffre Argent�", 
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
  SC_SHOP = ["Bienvenue !", "Je dispose de nouveaux objets qui pourraient vous int�resser.", 
  "Merci ch�re cliente !", "D�sol�, je suis en rupture de stock.", 
  "ATQ+1 POUR TOUS", "DEF+1 POUR TOUS"]
  SKILL_NAME = []
  SKILL_NAME[21] = "Orbes de Feu et de Glace"
  SKILL_NAME[22] = "Zone d'Ouragan"
  SKILL_NAME[23] = "Orbes Mystiques"
  SKILL_NAME[24] = "Sceaux de Fantaisie"
  SKILL_NAME[25] = "Col�re de la Terre"
  SKILL_NAME[26] = "Intervention Divine"
  SKILL_NAME[27] = "Amulettes Hakurei"
  SKILL_NAME[31] = "Lance-missiles Magique"
  SKILL_NAME[32] = "Master Spark"
  SKILL_NAME[33] = "Geyser Puissant"
  SKILL_NAME[34] = "Envol de la Sorci�re"
  SKILL_NAME[35] = "Aura Purificatrice"
  SKILL_NAME[36] = "Big Bang"
  SKILL_NAME[37] = "Festival des Rayons de l'Amour"
  SKILL_NAME[41] = "Couloir de l'Enfer"
  SKILL_NAME[42] = "Balles d'Electricit�"
  SKILL_NAME[43] = "Kunais Mortels"
  SKILL_NAME[44] = "Paradoxe de l'Ombre"
  SKILL_NAME[45] = "Dague Maudite"
  SKILL_NAME[46] = "Pluie de Lames"
  SKILL_NAME[47] = "Clones Telluriques"
  SKILL_NAME[51] = "Sort Divin : Eruption Solaire"
  SKILL_NAME[52] = "Sort Divin : Bulles Corrompues"
  SKILL_NAME[53] = "Signe du Sacr� : Tornade Arc-en-ciel"
  SKILL_NAME[54] = "Tr�sor C�leste : Arbre Sacr�"
  SKILL_NAME[55] = "Signe de la Magie : Feu de l'Ombre"
  SKILL_NAME[56] = "Signe de la Magie : Fontaine de Jouvence"
  SKILL_NAME[57] = "Magicannon : Typhon Spark"
  SKILL_NAME[58] = "Dernier Recours : Armageddon"
  SKILL_NAME[59] = "Art Secret : Regain de Combativit�"
  SKILL_NAME[60] = "Art Secret : Flux d'Icebergs"
  SKILL_NAME[61] = "Vitesse de la Lumi�re : Choc Imminent"
  SKILL_NAME[62] = "Art Etrange : Barri�re Temporelle"
  SKILL_NAME[103] = "Tremblement de Terre"
  SKILL_NAME[115] = "Bombes de Cristal"
  SKILL_NAME[119] = "Papillons Mal�fiques"
  SKILL_NAME[130] = "Signe du Marionnettiste : D�cha�nement des Poup�es"
  SKILL_NAME[136] = "Signe du Feu : Combustion Spontan�e"
  SKILL_NAME[149] = "Yeux Lunaires : Embuscade du Lapin Meurtrier"
  SKILL_NAME[155] = "Signe du Froid : Canon � Glace"
  SKILL_NAME[156] = "Signe du Froid : Lasers Glac�s"
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
  SKILL_NAME[199] = "Mal�diction n�158"
  SKILL_NAME[200] = "Camouflage"
  SKILL_NAME[202] = "Mal�diction n�666 : Peine de Mort"
  SKILL_NAME[208] = "Signe de la Temp�te : Appel de Raijin"
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
  SKILL_NAME[282] = "Dieu Originaire : Serpent Eth�r�s"
  SKILL_NAME[283] = "Signe de la Grenouille : Grenouilles dans la Temp�te"
  SKILL_NAME[288] = "Ceinture d'ast�ro�des"
  SKILL_NAME[300] = "Sph�res contamin�es"
  SKILL_NAME[314] = "Signe de l'Ivresse : Quatre Sakes de la Destin�e"
  SKILL_NAME[315] = "Signe Oni : Clones de Brume"
  SKILL_NAME[318] = "Signe de la Terre : Un Millier de Stalactites"
  SKILL_NAME[319] = "Signe de la Terre : Rochers Chaotiques"
  SKILL_NAME[327] = "Orbes Runiques Explosives"
  SKILL_NAME[338] = "Lumi�re Aveuglante"
  SKILL_NAME[339] = "Signe du Feu : Incandescence Absolue"
  SKILL_NAME[345] = "Signe Nucl�aire : Fission Atomique"
  SKILL_NAME[346] = "Feu Atomique : Particules Instables"
  SKILL_NAME[359] = "Signe de l'Invocation : Orbe de Shinigami"
  SKILL_NAME[360] = "Signe de la Mort : Projectiles du N�ant"
  SKILL_NAME[364] = "Signe de la Mort : Projectiles Eth�r�s"
  SKILL_NAME[371] = "La Tribu Affam�e"
  SKILL_NAME[375] = "La Tribu Eth�r�e"
  SKILL_NAME[379] = "Signe du Vent : Croisement des Rayons"
  SKILL_NAME[380] = "Signe de la Terre : D�cha�nement Terrestre"
  SKILL_NAME[384] = "Innombrables Epines"
  SKILL_NAME[388] = "Innombrables Epines Eth�r�es"
  SKILL_NAME[403] = "Signe du Fant�me : Assaut de la Moiti�-Spectre"
  SKILL_NAME[412] = "Signe de la Floraison : Couronnes de Papillons"
  SKILL_NAME[413] = "Signe du Cerisier : Chute des P�tales"
  SKILL_NAME[414] = "Nirvana Parfait Saigyouji - 1�re Phase"
  SKILL_NAME[415] = "Nirvana Parfait Saigyouji - 2�me Phase"
  SKILL_NAME[416] = "Nirvana Parfait Saigyouji - Derni�re Phase"
  SKILL_NAME[419] = "Signe du Vide : Eruption Noire"
  SKILL_NAME[432] = "Signe du Vide : Conflagration de l'Ombre"
  SKILL_NAME[436] = "Le Nid des Dragons de l'Ombre"
  SKILL_NAME[437] = "Signe du Dragon : Le V�ritable Eveil de la Wyvern"
  SKILL_NAME[475] = "Torrent de Lances"
  SKILL_NAME[494] = "Signe de l'Invocation : Fissure de l'Ombre"
  SKILL_NAME[495] = "Ultime Fronti�re : D�truire la R�alit�"
  SKILL_NAME[504] = "Taboo : Four of a Kind"
  SKILL_NAME[505] = "Signe des Couleurs : Pi�ge Arc-en-ciel"
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
  SKILL_NAME[564] = "Art C�leste : Anneau L�tal de Terre"
  SKILL_NAME[570] = "Signe de la Foudre : Choc Supr�me"
  SKILL_NAME[571] = "Art C�leste : Anneau L�tal de Foudre"
  SKILL_NAME[907] = "Invocation Hasardeuse"
  SKILL_NAME[908] = "Souffle Miraculeux"
  SKILL_NAME[909] = "Les Quatre Pentagrammes El�mentaires"
  SKILL_NAME[910] = "Salutations des Dieux de la Foudre"
  SKILL_NAME[917] = "L'Ecrasante Cirno"
  SKILL_NAME[918] = "Aura Glac�e"
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
  SKILL_NAME[947] = "Tornades Eph�m�res"
  SKILL_NAME[948] = "Rafale Per�ante"
  SKILL_NAME[949] = "Rush Tengu"
  SKILL_NAME[950] = "Dieu du Vent : Missiles Soniques Tengu"
  SKILL_NAME[957] = "M�t�ore Irradi�"
  SKILL_NAME[958] = "El�ments Radioactifs"
  SKILL_NAME[959] = "Supernovae"
  SKILL_NAME[960] = "Signe Nucl�aire : Fission Atomique"
  SKILL_NAME[967] = "Mort Subite"
  SKILL_NAME[968] = "Danse des Lames"
  SKILL_NAME[969] = "Les Ep�es des Dix Rois"
  SKILL_NAME[970] = "Signe du Fant�me : Assaut de la Moiti�-Spectre"
  SKILL_NAME[977] = "Souffle de l'Ivrogne"
  SKILL_NAME[978] = "Sake de Chance d'Oni"
  SKILL_NAME[979] = "Ondes Sismiques"
  SKILL_NAME[980] = "Signe Oni : Clones de Brume"
  SKILL_NAME[987] = "Barri�re Danmaku"
  SKILL_NAME[988] = "Parasol Tournoyant"
  SKILL_NAME[989] = "Missiles de Nulle Part"
  SKILL_NAME[990] = "Ultime Fronti�re : D�truire la R�alit�"
end