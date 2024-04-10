// ignore_for_file: constant_identifier_names, unnecessary_new

// class PokeModel {
//   int id;
//   Name name;
//   List<Type> type;
//   Base? base;
//   String species;
//   String description;
//   Evolution evolution;
//   Profile profile;
//   Image image;

//   PokeModel({
//     required this.id,
//     required this.name,
//     required this.type,
//     this.base,
//     required this.species,
//     required this.description,
//     required this.evolution,
//     required this.profile,
//     required this.image,
//   });

// }

// class Base {
//   int hp;
//   int attack;
//   int defense;
//   int spAttack;
//   int spDefense;
//   int speed;

//   Base({
//     required this.hp,
//     required this.attack,
//     required this.defense,
//     required this.spAttack,
//     required this.spDefense,
//     required this.speed,
//   });
// }

// class Evolution {
//   List<List<String>>? next;
//   List<String>? prev;

//   Evolution({
//     this.next,
//     this.prev,
//   });
// }

// class Image {
//   String sprite;
//   String thumbnail;
//   String? hires;

//   Image({
//     required this.sprite,
//     required this.thumbnail,
//     this.hires,
//   });
// }

// class Name {
//   String english;
//   String japanese;
//   String chinese;
//   String french;

//   Name({
//     required this.english,
//     required this.japanese,
//     required this.chinese,
//     required this.french,
//   });
// }

// class Profile {
//   String height;
//   String weight;
//   List<Egg>? egg;
//   List<List<String>> ability;
//   Gender gender;

//   Profile({
//     required this.height,
//     required this.weight,
//     this.egg,
//     required this.ability,
//     required this.gender,
//   });
// }

// enum Egg {
//   AMORPHOUS,
//   BUG,
//   DITTO,
//   DRAGON,
//   FAIRY,
//   FIELD,
//   FLYING,
//   GRASS,
//   HUMAN_LIKE,
//   MINERAL,
//   MONSTER,
//   UNDISCOVERED,
//   WATER_1,
//   WATER_2,
//   WATER_3
// }

// enum Gender {
//   GENDERLESS,
//   THE_001000,
//   THE_0100,
//   THE_1000,
//   THE_100000,
//   THE_125875,
//   THE_250750,
//   THE_2575,
//   THE_500500,
//   THE_5050,
//   THE_7525,
//   THE_875125
// }

// enum Type {
//   BUG,
//   DARK,
//   DRAGON,
//   ELECTRIC,
//   FAIRY,
//   FIGHTING,
//   FIRE,
//   FLYING,
//   GHOST,
//   GRASS,
//   GROUND,
//   ICE,
//   NORMAL,
//   POISON,
//   PSYCHIC,
//   ROCK,
//   STEEL,
//   WATER
// }

// import 'dart:convert';

// class PokeModel {
//   List<Type>? get type => json['type'] != null ? List<Type>.from(json['type'].map((e) => Type.fromString(e))) : null;
//   int? id;
//   Name? name;
//   List<Type>? type;
//   Base? base;
//   String? species;
//   String? description;
//   Evolution? evolution;
//   Profile? profile;
//   Image? image;

//   factory PokeModel.fromJson(Map<String, dynamic> json) {
//     return PokeModel(
//       id: json['id'],
//       name: Name.fromJson(json['name']),
//       type: List<Type>.from(json['type'].map((e) => Type.fromString(e))),
//       base: Base.fromJson(json['base']),
//       species: json['species'],
//       description: json['description'],
//       evolution: Evolution.fromJson(json['evolution']),
//       profile: Profile.fromJson(json['profile']),
//       image: Image.fromJson(json['image']),
//       type:
//     );
//   }
// }

// class Name {
//   String english;
//   String japanese;
//   String chinese;
//   String french;

//   Name({
//     required this.english,
//     required this.japanese,
//     required this.chinese,
//     required this.french,
//   });

//   factory Name.fromJson(Map<String, dynamic> json) {
//     return Name(
//       english: json['english'],
//       japanese: json['japanese'],
//       chinese: json['chinese'],
//       french: json['french'],
//     );
//   }
// }

// class Type {
//   String? name;

//   factory Type.fromString(String type) {
//     switch (type) {
//       case 'bug':
//         return Type.BUG;
//       case 'dark':
//         return Type.DARK;
//       case 'dragon':
//         return Type.DRAGON;
//       case 'electric':
//         return Type.ELECTRIC;
//       case 'fairy':
//         return Type.FAIRY;
//       case 'fighting':
//         return Type.FIGHTING;
//       case 'fire':
//         return Type.FIRE;
//       case 'flying':
//         return Type.FLYING;
//       case 'ghost':
//         return Type.GHOST;
//       case 'grass':
//         return Type.GRASS;
//       case 'ground':
//         return Type.GROUND;
//       case 'ice':
//         return Type.ICE;
//       case 'normal':
//         return Type.NORMAL;
//       case 'poison':
//         return Type.POISON;
//       case 'psychic':
//         return Type.PSYCHIC;
//       case 'rock':
//         return Type.ROCK;
//       case 'steel':
//         return Type.STEEL;
//       case 'water':
//         return Type.WATER;
//       default:
//         throw ArgumentError('Invalid type: $type');
//     }
//   }
// }

// class Base {
//   int? hp;
//   int? defense;
//   int? attack;
//   int? spAttack;
//   int? spDefense;
//   int? speed;

//   factory Base.fromJson(Map<String, dynamic> json) {
//     return Base(
//       hp: json['hp'],
//       attack: json['attack'],
//       defense: json['defense'],
//       spAttack: json['sp-attack'],
//       spDefense: json['sp-defense'],
//       speed: json['speed'],
//     );
//   }
// }

// class Evolution {
//   List<List<String>>? next;
//   List<String>? prev;

//   factory Evolution.fromJson(Map<String, dynamic> json) {
//     return Evolution(
//       next: json['next'] != null
//           ? List<List<String>>.from(json['next'].map((e) => e.toString()))
//           : null,
//       prev: json['prev'] != null
//           ? List<String>.from(json['prev'].map((e) => e.toString()))
//           : null,
//     );
//   }
// }

// class Profile {
//   String? height;
//   String? weight;
//   List<Egg>? egg;
//   List<List<String>>? ability;
//   Gender? gender;

//   factory Profile.fromJson(Map<String, dynamic> json) {
//     return Profile(
//       height: json['height'],
//       weight: json['weight'],
//       egg: json['egg'] != null
//           ? List<Egg>.from(json['egg'].map((e) => Egg.values
//               .firstWhere((element) => element.index == int.parse(e))))
//           : null,
//       ability: json['ability'] != null
//           ? List<List<String>>.from(
//               json['ability'].map((e) => e.toString().split(',')))
//           : null,
//       gender: json['gender'] != null
//           ? Gender.values.firstWhere(
//               (element) => element.index == int.parse(json['gender']))
//           : null,
//     );
//   }
// }

// class Image {
//   String? sprite;
//   String? thumbnail;
//   String? hires;

//   factory Image.fromJson(Map<String, dynamic> json) {
//     return Image(
//       sprite: json['sprite'],
//       thumbnail: json['thumbnail'],
//       hires: json['hires'] ?? null,
//     );
//   }
// }

// enum Egg {
//   AMORPHOUS,
//   BUG,
//   DITTO,
//   DRAGON,
//   FAIRY,
//   FIELD,
//   FLYING,
//   GRASS,
//   HUMAN_LIKE,
//   MINERAL,
//   MONSTER,
//   UNDISCOVERED,
//   WATER_1,
//   WATER_2,
//   WATER_3
// }

// enum Gender {
//   GENDERLESS,
//   THE_001000,
//   THE_0100,
//   THE_100000,
//   THE_125875,
//   THE_250750,
//   THE_2575,
//   THE_500500,
//   THE_5050,
//   THE_7525,
//   THE_875125
// }

// enum PokemonType {
//   BUG,
//   DARK,
//   DRAGON,
//   ELECTRIC,
//   FAIRY,
//   FIGHTING,
//   FIRE,
//   FLYING,
//   GHOST,
//   GRASS,
//   GROUND,
//   ICE,
//   NORMAL,
//   POISON,
//   PSYCHIC,
//   ROCK,
//   STEEL,
//   WATER
// }

import 'dart:core';

class PokeModel {
  int? id;
  Name? name;
  List<String>? type;
  Base? base;
  String? species;
  String? description;
  Evolution? evolution;
  Profile? profile;
  Image? image;

  PokeModel(
      {this.id,
      this.name,
      this.type,
      this.base,
      this.species,
      this.description,
      this.evolution,
      this.profile,
      this.image});

  PokeModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'] != null ? new Name.fromJson(json['name']) : null;
    type = json['type'].cast<String>();
    base = json['base'] != null ? new Base.fromJson(json['base']) : null;
    species = json['species'];
    description = json['description'];
    evolution = json['evolution'] != null
        ? new Evolution.fromJson(json['evolution'])
        : null;
    profile =
        json['profile'] != null ? new Profile.fromJson(json['profile']) : null;
    image = json['image'] != null ? new Image.fromJson(json['image']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (name != null) {
      data['name'] = name!.toJson();
    }
    data['type'] = type;
    if (base != null) {
      data['base'] = base!.toJson();
    }
    data['species'] = species;
    data['description'] = description;
    if (evolution != null) {
      data['evolution'] = evolution!.toJson();
    }
    if (profile != null) {
      data['profile'] = profile!.toJson();
    }
    if (image != null) {
      data['image'] = image?.toJson();
    }
    return data;
  }
}

class Name {
  String? english;
  String? japanese;
  String? chinese;
  String? french;

  Name({this.english, this.japanese, this.chinese, this.french});

  Name.fromJson(Map<String, dynamic> json) {
    english = json['english'];
    japanese = json['japanese'];
    chinese = json['chinese'];
    french = json['french'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['english'] = english;
    data['japanese'] = japanese;
    data['chinese'] = chinese;
    data['french'] = french;
    return data;
  }
}

class Base {
  int? hP;
  int? attack;
  int? defense;
  int? spAttack;
  int? spDefense;
  int? speed;

  Base(
      {this.hP,
      this.attack,
      this.defense,
      this.spAttack,
      this.spDefense,
      this.speed});

  Base.fromJson(Map<String, dynamic> json) {
    hP = json['HP'];
    attack = json['Attack'];
    defense = json['Defense'];
    spAttack = json['Sp. Attack'];
    spDefense = json['Sp. Defense'];
    speed = json['Speed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['HP'] = hP;
    data['Attack'] = attack;
    data['Defense'] = defense;
    data['Sp. Attack'] = spAttack;
    data['Sp. Defense'] = spDefense;
    data['Speed'] = speed;
    return data;
  }
}

class Evolution {
  List<List>? next;

  Evolution({this.next});

  Evolution.fromJson(Map<String, dynamic> json) {
    if (json['next'] != null) {
      // next = new List<List>();
      next = [] as List<List<String>>;
      json['next'].forEach((v) {
        next!.add(v.toString().split(','));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (data['next'] != null) {
      next = [];
      // data['next'] = next?.map((v) => json.encode(v.split(','))).toList();
      data['next'].forEach((v) => next!.add(v.split(',')));
    }
    return data;
  }
}

class Next {
  Next({key});

  Next.fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    return data;
  }
}

class Profile {
  String? height;
  String? weight;
  List<String>? egg;
  List<List>? ability;
  String? gender;

  Profile({this.height, this.weight, this.egg, this.ability, this.gender});

  Profile.fromJson(Map<String, dynamic> json) {
    height = json['height'];
    weight = json['weight'];
    egg = json['egg'].cast<String>();
    if (json['ability'] != null) {
      ability = [];
      json['ability'].forEach((v) {
        ability?.add(v.split(','));
      });
    }
    gender = json['gender'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['height'] = height;
    data['weight'] = weight;
    data['egg'] = egg;
    if (data['ability'] != null) {
      ability = [];
      // data['ability'] = ability?.map((v) => json.encode(v.split(','))).toList();
      data['ability'].forEach((v) => ability!.add(v.split(',')));
    }
    data['gender'] = gender;
    return data;
  }
}

class Image {
  String? sprite;
  String? thumbnail;
  String? hires;

  Image({this.sprite, this.thumbnail, this.hires});

  Image.fromJson(Map<String, dynamic> json) {
    sprite = json['sprite'];
    thumbnail = json['thumbnail'];
    hires = json['hires'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['sprite'] = sprite;
    data['thumbnail'] = thumbnail;
    data['hires'] = hires;
    return data;
  }
}

