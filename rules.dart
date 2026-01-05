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
