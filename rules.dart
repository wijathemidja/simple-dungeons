import 'functions.dart';

// This rules file basically determines what differing functions to use in certain situations. I could include this in functions and main but this makes it 1. easily configurable and 2. readable (and ig modular)
// RULES
// (yes rules are technically just global variables but this makes them easier to find)
// Rules are held in a map.
Map rules = {"Rerolls": "Extended", "Delay Before Clear": 2000};
// SCREEN MAP
// GLOBAL VARIABLES
Function lastScreen = welcome();

//STATS
Map<String, int> elfStats = {
  "str": 25,
  "con": 20,
  "dex": 40,
  "wis": 35,
  "res": 30,
  "hp": 6,
};

Map<String, int> dwarfStats = {
  "str": 40,
  "con": 30,
  "dex": 25,
  "wis": 25,
  "res": 30,
  "hp": 8,
};

Map<String, int> halflingStats = {
  "str": 20,
  "con": 20,
  "dex": 40,
  "wis": 30,
  "res": 40,
  "hp": 5,
};

Map<String, int> humanStats = {
  "str": 30,
  "con": 30,
  "dex": 30,
  "wis": 30,
  "res": 30,
  "hp": 7,
};

// SKILLS
Map<String, int> alchemistSkills = {
  "cs" : -5,
  "rs" : -5,
  "dodge" : -10,
  "pickLocks" : -20,
  "barter": 0,
  "heal" : 5,
  "alch" : 10,
  "perc":-10,
  "fora": -20,
  "hp": 0,
};


Map<String, int> barbarianSkills = {
  "cs" : 15,
  "rs" : -10,
  "dodge" : 5,
  "pickLocks" : -20,
  "barter": -15,
  "heal" : -10,
  "alch" : -25,
  "perc":-5,
  "fora": -15,
  "hp": 2,
};

Map<String, int> rangerSkills = {
  "cs" : -5,
  "rs" : 15,
  "dodge" : -5,
  "pickLocks" : -25,
  "barter": -20,
  "heal" : -10,
  "alch" : -20,
  "perc":0,
  "fora": 15,
  "hp": 0,
};

Map<String, int> rogueSkills = {
  "cs" : 0,
  "rs" : 0,
  "dodge" : 0,
  "pickLocks" : 0,
  "barter": 5,
  "heal" : -10,
  "alch" : -25,
  "perc":0,
  "fora": 0,
  "hp":0,
};

Map<String, int> thiefSkills = {
  "cs" : -5,
  "rs" : 5,
  "dodge" : 5,
  "pickLocks" : 10,
  "barter": 0,
  "heal" : -20,
  "alch" : -30,
  "perc":10,
  "fora": -20,
  "hp":0,
};

Map<String, int> warriorSkills = {
  "cs" : 10,
  "rs" : 5,
  "dodge" : 0,
  "pickLocks" : -20,
  "barter": -15,
  "heal" : -10,
  "alch" : -25,
  "perc":-10,
  "fora": -15,
  "hp" : 3,
};

Map<String, int> warriorPriestSkills = {
  "cs" : 5,
  "rs" : -5,
  "dodge" : -5,
  "pickLocks" : -20,
  "barter": -10,
  "heal" : 5,
  "alch" : -15,
  "perc":-10,
  "fora": -20,
  "hp": 1,
  "battPray": 15,
};

Map<String, int> wizardSkills = {
  "cs" : -5,
  "rs" : -10,
  "dodge" : -10,
  "pickLocks" : -20,
  "barter": 5,
  "heal" : -5,
  "alch" : -20,
  "perc":-10,
  "fora": -20,
  "hp" : 0,
  "arcArt" : 10,
};
