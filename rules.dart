import 'functions.dart';

// This rules file basically determines what differing functions to use in certain situations. I could include this in functions and main but this makes it 1. easily configurable and 2. readable (and ig modular)
// RULES
// (yes rules are technically just global variables but this makes them easier to find)
// Rules are held in a map.
Map rules = {"Rerolls": "Extended", "Delay Before Clear": 2000};
// SCREEN MAP
// GLOBAL VARIABLES
Function lastScreen = welcome();
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

Map<String, int> alchemistSkills = {
  "cs" : 0,
  "rs" : 0,
  "dodge" : 0,
  "pickLocks" : 0,
  "barter": 0,
  "heal" : 0,
  "alch" : 0,
  "perc":0,
  "fora": 0,
};


Map<String, int> barbarianSkills = {
  "cs" : 0,
  "rs" : 0,
  "dodge" : 0,
  "pickLocks" : 0,
  "barter": 0,
  "heal" : 0,
  "alch" : 0,
  "perc":0,
  "fora": 0,
};

Map<String, int> rangerSkills = {
  "cs" : 0,
  "rs" : 0,
  "dodge" : 0,
  "pickLocks" : 0,
  "barter": 0,
  "heal" : 0,
  "alch" : 0,
  "perc":0,
  "fora": 0,
};

Map<String, int> rogueSkills = {
  "cs" : 0,
  "rs" : 0,
  "dodge" : 0,
  "pickLocks" : 0,
  "barter": 0,
  "heal" : 0,
  "alch" : 0,
  "perc":0,
  "fora": 0,
};

Map<String, int> thiefSkills = {
  "cs" : 0,
  "rs" : 0,
  "dodge" : 0,
  "pickLocks" : 0,
  "barter": 0,
  "heal" : 0,
  "alch" : 0,
  "perc":0,
  "fora": 0,
};

Map<String, int> warriorSkills = {
  "cs" : 0,
  "rs" : 0,
  "dodge" : 0,
  "pickLocks" : 0,
  "barter": 0,
  "heal" : 0,
  "alch" : 0,
  "perc":0,
  "fora": 0,
};

Map<String, int> warriorPriestSkills = {
  "cs" : 0,
  "rs" : 0,
  "dodge" : 0,
  "pickLocks" : 0,
  "barter": 0,
  "heal" : 0,
  "alch" : 0,
  "perc":0,
  "fora": 0,
  "battPray": 0,
};

Map<String, int> wizardSkills = {
  "cs" : 0,
  "rs" : 0,
  "dodge" : 0,
  "pickLocks" : 0,
  "barter": 0,
  "heal" : 0,
  "alch" : 0,
  "perc":0,
  "fora": 0,
  "arcArt" : 0,
};
