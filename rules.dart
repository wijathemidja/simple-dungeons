import 'functions.dart';
// This rules file basically determines what differing functions to use in certain situations. I could include this in functions and main but this makes it 1. easily configurable and 2. readable (and ig modular)
// RULES
// (yes rules are technically just global variables but this makes them easier to find)
// Rules are held in a map.
Map rules = {"Rerolls" : "Extended", "Delay Before Clear" : 2000,};
// SCREEN MAP
Map<String,Function> screens = {
  "welcome" : welcome(),
};
// GLOBAL VARIABLES
String lastScreen = "welcome";









