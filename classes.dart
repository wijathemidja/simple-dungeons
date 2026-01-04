class hero {
  // Stats
  late int con;
  late int dex;
  late int str;
  late int wis;
  late int res;
  late int hp;
  // Skills
  late int cs;
  late int rs;
  late int dodge;
  late int pickLocks;
  late int barter;
  late int heal;
  late int alchemy;
  late int perception;
  late int foraging;
  // Misc
  late String species;
  // Constructor
  hero({required this.str, required this.con, required this.dex, required this.wis, required this.res, required this.hp, required this.cs, required this.rs, required this.dodge, required this.pickLocks, required this.barter, required this.heal, required this.alchemy, required this.perception, required this.foraging});
}

class wizard extends hero {
  late int arcane;
  // Constructor references hero class and adds arcane
  wizard({required super.str, required super.con, required super.dex, required super.wis, required super.res, required super.hp, required super.cs, required super.rs, required super.dodge, required super.pickLocks, required super.barter, required super.heal, required super.alchemy, required super.perception, required super.foraging, required this.arcane});
}

class warriorPriest extends hero {
  late int battlePrayers;
  // Constructor references hero class and adds battle prayers
  warriorPriest({required super.str, required super.con, required super.dex, required super.wis, required super.res, required super.hp, required super.cs, required super.rs, required super.dodge, required super.pickLocks, required super.barter, required super.heal, required super.alchemy, required super.perception, required super.foraging, required this.battlePrayers});
}

class enemy {
 //Placeholder
}

class mercenary extends enemy {
 //Placeholder
}
