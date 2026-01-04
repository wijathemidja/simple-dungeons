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
  hero(this.str, this.con, this.dex, this.wis, this.res, this.hp, this.cs, this.rs, this.dodge, this.pickLocks, this.barter, this.heal, this.alchemy, this.perception, this.foraging);
}

class wizard extends hero {
  late int arcane;
  // Constructor references hero class and adds arcane
  wizard(super.str, super.con, super.dex, super.wis, super.res, super.hp, super.cs, super.rs, super.dodge, super.pickLocks, super.barter, super.heal, super.alchemy, super.perception, super.foraging, this.arcane);
}

class warriorPriest extends hero {
  late int battlePrayers;
  // Constructor references hero class and adds battle prayers
  warriorPriest(super.str, super.con, super.dex, super.wis, super.res, super.hp, super.cs, super.rs, super.dodge, super.pickLocks, super.barter, super.heal, super.alchemy, super.perception, super.foraging, this.battlePrayers);
}

class enemy {
 //Placeholder
}

class mercenary extends enemy {
 //Placeholder
}
