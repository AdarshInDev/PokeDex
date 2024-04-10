//
// To parse this JSON data, do
//
//     final pokeModel = pokeModelFromJson(jsonString);

import 'dart:convert';

PokeModel pokeModelFromJson(String str) => PokeModel.fromJson(json.decode(str));

String pokeModelToJson(PokeModel data) => json.encode(data.toJson());

class PokeModel {
    final int id;
    final Name name;
    final List<String> type;
    final Base base;
    final String species;
    final String description;
    final Evolution evolution;
    final Profile profile;
    final Image image;

    PokeModel({
        required this.id,
        required this.name,
        required this.type,
        required this.base,
        required this.species,
        required this.description,
        required this.evolution,
        required this.profile,
        required this.image,
    });

    PokeModel copyWith({
        int? id,
        Name? name,
        List<String>? type,
        Base? base,
        String? species,
        String? description,
        Evolution? evolution,
        Profile? profile,
        Image? image,
    }) => 
        PokeModel(
            id: id ?? this.id,
            name: name ?? this.name,
            type: type ?? this.type,
            base: base ?? this.base,
            species: species ?? this.species,
            description: description ?? this.description,
            evolution: evolution ?? this.evolution,
            profile: profile ?? this.profile,
            image: image ?? this.image,
        );

    factory PokeModel.fromJson(Map<String, dynamic> json) => PokeModel(
        id: json["id"],
        name: Name.fromJson(json["name"]),
        type: List<String>.from(json["type"].map((x) => x)),
        base: Base.fromJson(json["base"]),
        species: json["species"],
        description: json["description"],
        evolution: Evolution.fromJson(json["evolution"]),
        profile: Profile.fromJson(json["profile"]),
        image: Image.fromJson(json["image"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name.toJson(),
        "type": List<dynamic>.from(type.map((x) => x)),
        "base": base.toJson(),
        "species": species,
        "description": description,
        "evolution": evolution.toJson(),
        "profile": profile.toJson(),
        "image": image.toJson(),
    };
}

class Base {
    final int hp;
    final int attack;
    final int defense;
    final int spAttack;
    final int spDefense;
    final int speed;

    Base({
        required this.hp,
        required this.attack,
        required this.defense,
        required this.spAttack,
        required this.spDefense,
        required this.speed,
    });

    Base copyWith({
        int? hp,
        int? attack,
        int? defense,
        int? spAttack,
        int? spDefense,
        int? speed,
    }) => 
        Base(
            hp: hp ?? this.hp,
            attack: attack ?? this.attack,
            defense: defense ?? this.defense,
            spAttack: spAttack ?? this.spAttack,
            spDefense: spDefense ?? this.spDefense,
            speed: speed ?? this.speed,
        );

    factory Base.fromJson(Map<String, dynamic> json) => Base(
        hp: json["HP"],
        attack: json["Attack"],
        defense: json["Defense"],
        spAttack: json["Sp. Attack"],
        spDefense: json["Sp. Defense"],
        speed: json["Speed"],
    );

    Map<String, dynamic> toJson() => {
        "HP": hp,
        "Attack": attack,
        "Defense": defense,
        "Sp. Attack": spAttack,
        "Sp. Defense": spDefense,
        "Speed": speed,
    };
}

class Evolution {
    final List<String> prev;

    Evolution({
        required this.prev,
    });

    Evolution copyWith({
        List<String>? prev,
    }) => 
        Evolution(
            prev: prev ?? this.prev,
        );

    factory Evolution.fromJson(Map<String, dynamic> json) => Evolution(
        prev: List<String>.from(json["prev"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "prev": List<dynamic>.from(prev.map((x) => x)),
    };
}

class Image {
    final String sprite;
    final String thumbnail;
    final String hires;

    Image({
        required this.sprite,
        required this.thumbnail,
        required this.hires,
    });

    Image copyWith({
        String? sprite,
        String? thumbnail,
        String? hires,
    }) => 
        Image(
            sprite: sprite ?? this.sprite,
            thumbnail: thumbnail ?? this.thumbnail,
            hires: hires ?? this.hires,
        );

    factory Image.fromJson(Map<String, dynamic> json) => Image(
        sprite: json["sprite"],
        thumbnail: json["thumbnail"],
        hires: json["hires"],
    );

    Map<String, dynamic> toJson() => {
        "sprite": sprite,
        "thumbnail": thumbnail,
        "hires": hires,
    };
}

class Name {
    final String english;
    final String japanese;
    final String chinese;
    final String french;

    Name({
        required this.english,
        required this.japanese,
        required this.chinese,
        required this.french,
    });

    Name copyWith({
        String? english,
        String? japanese,
        String? chinese,
        String? french,
    }) => 
        Name(
            english: english ?? this.english,
            japanese: japanese ?? this.japanese,
            chinese: chinese ?? this.chinese,
            french: french ?? this.french,
        );

    factory Name.fromJson(Map<String, dynamic> json) => Name(
        english: json["english"],
        japanese: json["japanese"],
        chinese: json["chinese"],
        french: json["french"],
    );

    Map<String, dynamic> toJson() => {
        "english": english,
        "japanese": japanese,
        "chinese": chinese,
        "french": french,
    };
}

class Profile {
    final String height;
    final String weight;
    final List<String> egg;
    final List<List<String>> ability;
    final String gender;

    Profile({
        required this.height,
        required this.weight,
        required this.egg,
        required this.ability,
        required this.gender,
    });

    Profile copyWith({
        String? height,
        String? weight,
        List<String>? egg,
        List<List<String>>? ability,
        String? gender,
    }) => 
        Profile(
            height: height ?? this.height,
            weight: weight ?? this.weight,
            egg: egg ?? this.egg,
            ability: ability ?? this.ability,
            gender: gender ?? this.gender,
        );

    factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        height: json["height"],
        weight: json["weight"],
        egg: List<String>.from(json["egg"].map((x) => x)),
        ability: List<List<String>>.from(json["ability"].map((x) => List<String>.from(x.map((x) => x)))),
        gender: json["gender"],
    );

    Map<String, dynamic> toJson() => {
        "height": height,
        "weight": weight,
        "egg": List<dynamic>.from(egg.map((x) => x)),
        "ability": List<dynamic>.from(ability.map((x) => List<dynamic>.from(x.map((x) => x)))),
        "gender": gender,
    };
}
