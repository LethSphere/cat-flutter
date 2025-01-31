class CatbreedResponse {
    final Weight? weight;
    final String id;
    final String name;
    final String? cfaUrl;
    final String? vetstreetUrl;
    final String? vcahospitalsUrl;
    final String temperament;
    final String origin;
    final String countryCodes;
    final String countryCode;
    final String description;
    final String lifeSpan;
    final int indoor;
    final int? lap;
    final String? altNames;
    final int adaptability;
    final int affectionLevel;
    final int childFriendly;
    final int dogFriendly;
    final int energyLevel;
    final int grooming;
    final int healthIssues;
    final int intelligence;
    final int sheddingLevel;
    final int socialNeeds;
    final int strangerFriendly;
    final int vocalisation;
    final int experimental;
    final int hairless;
    final int natural;
    final int rare;
    final int rex;
    final int suppressedTail;
    final int shortLegs;
    final String? wikipediaUrl;
    final int hypoallergenic;
    final String? referenceImageId;
    final Image? image;
    final int? catFriendly;
    final int? bidability;

   CatbreedResponse({
        required this.weight,
        required this.id,
        required this.name,
        this.cfaUrl,
        this.vetstreetUrl,
        this.vcahospitalsUrl,
        required this.temperament,
        required this.origin,
        required this.countryCodes,
        required this.countryCode,
        required this.description,
        required this.lifeSpan,
        required this.indoor,
        this.lap,
        this.altNames,
        required this.adaptability,
        required this.affectionLevel,
        required this.childFriendly,
        required this.dogFriendly,
        required this.energyLevel,
        required this.grooming,
        required this.healthIssues,
        required this.intelligence,
        required this.sheddingLevel,
        required this.socialNeeds,
        required this.strangerFriendly,
        required this.vocalisation,
        required this.experimental,
        required this.hairless,
        required this.natural,
        required this.rare,
        required this.rex,
        required this.suppressedTail,
        required this.shortLegs,
        this.wikipediaUrl,
        required this.hypoallergenic,
        this.referenceImageId,
        this.image,
        this.catFriendly,
        this.bidability,
    });

    factory CatbreedResponse.fromJson(Map<String, dynamic> json) =>CatbreedResponse(
        weight: json["weight"] != null ? Weight.fromJson(json["weight"]):null ,
        id: json["id"] as String,
        name: json["name"] as String,
        cfaUrl: json["cfa_url"] != null ? json["cfa_url"] : null,
        vetstreetUrl: json["vetstreet_url"] != null ? json["vetstreet_url"] : null,
        vcahospitalsUrl: json["vcahospitals_url"] != null ? json["vcahospitals_url"] : null,
        temperament: json["temperament"] as String,
        origin: json["origin"] as String,
        countryCodes: json["country_codes"] as String,
        countryCode: json["country_code"] as String,
        description: json["description"] as String,
        lifeSpan: json["life_span"] as String,
        indoor: json["indoor"] as int,
        lap: json["lap"] != null ? json["lap"] : null,
        altNames: json["alt_names"] != null ? json["alt_names"] : null,
        adaptability: json["adaptability"] as int,
        affectionLevel: json["affection_level"] as int,
        childFriendly: json["child_friendly"] as int,
        dogFriendly: json["dog_friendly"] as int,
        energyLevel: json["energy_level"] ,
        grooming: json["grooming"],
        healthIssues: json["health_issues"],
        intelligence: json["intelligence"],
        sheddingLevel: json["shedding_level"],
        socialNeeds: json["social_needs"],
        strangerFriendly: json["stranger_friendly"],
        vocalisation: json["vocalisation"],
        experimental: json["experimental"],
        hairless: json["hairless"],
        natural: json["natural"],
        rare: json["rare"],
        rex: json["rex"],
        suppressedTail: json["suppressed_tail"],
        shortLegs: json["short_legs"],
        wikipediaUrl: json["wikipedia_url"],
        hypoallergenic: json["hypoallergenic"],
        referenceImageId: json["reference_image_id"],
        image: json["image"] != null ? Image.fromJson(json["image"]):null,
        catFriendly: json["cat_friendly"],
        bidability: json["bidability"],
    );

    Map<String, dynamic> toJson() => {
        "weight": weight?.toJson(),
        "id": id,
        "name": name,
        "cfa_url": cfaUrl,
        "vetstreet_url": vetstreetUrl,
        "vcahospitals_url": vcahospitalsUrl,
        "temperament": temperament,
        "origin": origin,
        "country_codes": countryCodes,
        "country_code": countryCode,
        "description": description,
        "life_span": lifeSpan,
        "indoor": indoor,
        "lap": lap,
        "alt_names": altNames,
        "adaptability": adaptability,
        "affection_level": affectionLevel,
        "child_friendly": childFriendly,
        "dog_friendly": dogFriendly,
        "energy_level": energyLevel,
        "grooming": grooming,
        "health_issues": healthIssues,
        "intelligence": intelligence,
        "shedding_level": sheddingLevel,
        "social_needs": socialNeeds,
        "stranger_friendly": strangerFriendly,
        "vocalisation": vocalisation,
        "experimental": experimental,
        "hairless": hairless,
        "natural": natural,
        "rare": rare,
        "rex": rex,
        "suppressed_tail": suppressedTail,
        "short_legs": shortLegs,
        "wikipedia_url": wikipediaUrl,
        "hypoallergenic": hypoallergenic,
        "reference_image_id": referenceImageId,
        "image": image?.toJson(),
        "cat_friendly": catFriendly,
        "bidability": bidability,
    };
}

class Image {
    final String id;
    final int width;
    final int height;
    final String url;

    Image({
        required this.id,
        required this.width,
        required this.height,
        required this.url,
    });

    factory Image.fromJson(Map<String, dynamic> json) => Image(
      
        id: json["id"],
        width: json["width"],
        height: json["height"],
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "width": width,
        "height": height,
        "url": url,
    };
}
class Weight {
    final String imperial;
    final String metric;

    Weight({
        required this.imperial,
        required this.metric,
    });

    factory Weight.fromJson(Map<String, dynamic> json) => Weight(
        imperial: json["imperial"],
        metric: json["metric"],
    );

    Map<String, dynamic> toJson() => {
        "imperial": imperial,
        "metric": metric,
    };
}
