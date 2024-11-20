class Events {
  Events({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  final int? count;
  final String? next;
  final dynamic previous;
  final List<Result> results;

  factory Events.fromJson(Map<String, dynamic> json) {
    return Events(
      count: json["count"],
      next: json["next"],
      previous: json["previous"],
      results: json["results"] == null
          ? []
          : List<Result>.from(json["results"]!.map((x) => Result.fromJson(x))),
    );
  }
}

class Result {
  Result({
    required this.id,
    required this.publicationDate,
    required this.dates,
    required this.title,
    required this.slug,
    required this.place,
    required this.description,
    required this.bodyText,
    required this.location,
    required this.categories,
    required this.tagline,
    required this.ageRestriction,
    required this.price,
    required this.isFree,
    required this.images,
    required this.favoritesCount,
    required this.commentsCount,
    required this.siteUrl,
    required this.shortTitle,
    required this.tags,
    required this.participants,
  });

  final int? id;
  final int? publicationDate;
  final List<Date> dates;
  final String? title;
  final String? slug;
  final Place? place;
  final String? description;
  final String? bodyText;
  final Location? location;
  final List<String> categories;
  final String? tagline;
  final dynamic? ageRestriction;
  final String? price;
  final bool? isFree;
  final List<Image> images;
  final int? favoritesCount;
  final int? commentsCount;
  final String? siteUrl;
  final String? shortTitle;
  final List<String> tags;
  final List<Participant> participants;

  factory Result.fromJson(Map<String, dynamic> json) {
    return Result(
      id: json["id"],
      publicationDate: json["publication_date"],
      dates: json["dates"] == null
          ? []
          : List<Date>.from(json["dates"]!.map((x) => Date.fromJson(x))),
      title: json["title"],
      slug: json["slug"],
      place: json["place"] == null ? null : Place.fromJson(json["place"]),
      description: json["description"],
      bodyText: json["body_text"],
      location:
          json["location"] == null ? null : Location.fromJson(json["location"]),
      categories: json["categories"] == null
          ? []
          : List<String>.from(json["categories"]!.map((x) => x)),
      tagline: json["tagline"],
      ageRestriction: json["age_restriction"],
      price: json["price"],
      isFree: json["is_free"],
      images: json["images"] == null
          ? []
          : List<Image>.from(json["images"]!.map((x) => Image.fromJson(x))),
      favoritesCount: json["favorites_count"],
      commentsCount: json["comments_count"],
      siteUrl: json["site_url"],
      shortTitle: json["short_title"],
      tags: json["tags"] == null
          ? []
          : List<String>.from(json["tags"]!.map((x) => x)),
      participants: json["participants"] == null
          ? []
          : List<Participant>.from(
              json["participants"]!.map((x) => Participant.fromJson(x))),
    );
  }
}

class Date {
  Date({
    required this.start,
    required this.end,
  });

  final int? start;
  final int? end;

  factory Date.fromJson(Map<String, dynamic> json) {
    return Date(
      start: json["start"],
      end: json["end"],
    );
  }
}

class Image {
  Image({
    required this.image,
    required this.source,
  });

  final String? image;
  final Source? source;

  factory Image.fromJson(Map<String, dynamic> json) {
    return Image(
      image: json["image"],
      source: json["source"] == null ? null : Source.fromJson(json["source"]),
    );
  }
}

class Source {
  Source({
    required this.name,
    required this.link,
  });

  final String? name;
  final String? link;

  factory Source.fromJson(Map<String, dynamic> json) {
    return Source(
      name: json["name"],
      link: json["link"],
    );
  }
}

class Location {
  Location({
    required this.slug,
  });

  final String? slug;

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      slug: json["slug"],
    );
  }
}

class Participant {
  Participant({
    required this.role,
    required this.agent,
  });

  final Location? role;
  final Agent? agent;

  factory Participant.fromJson(Map<String, dynamic> json) {
    return Participant(
      role: json["role"] == null ? null : Location.fromJson(json["role"]),
      agent: json["agent"] == null ? null : Agent.fromJson(json["agent"]),
    );
  }
}

class Agent {
  Agent({
    required this.id,
    required this.title,
    required this.slug,
    required this.agentType,
    required this.images,
    required this.siteUrl,
    required this.isStub,
  });

  final int? id;
  final String? title;
  final String? slug;
  final String? agentType;
  final List<dynamic> images;
  final String? siteUrl;
  final bool? isStub;

  factory Agent.fromJson(Map<String, dynamic> json) {
    return Agent(
      id: json["id"],
      title: json["title"],
      slug: json["slug"],
      agentType: json["agent_type"],
      images: json["images"] == null
          ? []
          : List<dynamic>.from(json["images"]!.map((x) => x)),
      siteUrl: json["site_url"],
      isStub: json["is_stub"],
    );
  }
}

class Place {
  Place({
    required this.id,
  });

  final int? id;

  factory Place.fromJson(Map<String, dynamic> json) {
    return Place(
      id: json["id"],
    );
  }
}
