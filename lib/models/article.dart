// To parse this JSON data, do
//
//     final article = articleFromJson(jsonString);

import 'dart:convert';

 Article articleFromJson(String str) => Article.fromJson(json.decode(str));


String articleToJson(Article data) => json.encode(data.toJson());

class Article {
  Article({
    required this.data,
    required this.meta,
  });

  List<Datum> data;
  Meta meta;

  factory Article.fromJson(Map<String, dynamic> json) => Article(
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    meta: Meta.fromJson(json["meta"]),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "meta": meta.toJson(),
  };
}

class Datum {
  Datum({
    this.id,
    this.title,
    this.slug,
    this.content,
    this.featuredImage,
    this.ago,
  });

  int? id;
  String? title;
  String? slug;
  String? content;
  String? featuredImage;
  String? ago;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    title: json["title"],
    slug: json["slug"],
    content: json["content"],
    featuredImage: json["featured_image"],
    ago: json["ago"],
  );


  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "slug": slug,
    "content": content,
    "featured_image": featuredImage,
    "ago": ago,
  };
}

class Meta {
  Meta({
     this.pagination,
  });

  Pagination? pagination;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
    pagination: Pagination.fromJson(json["pagination"]),
  );

  Map<String, dynamic> toJson() => {
    "pagination": pagination?.toJson(),
  };
}

class Pagination {
  Pagination({
    this.total,
    this.count,
    this.perPage,
    this.currentPage,
    this.totalPages,
    this.links,
  });

  int? total;
  int? count;
  int? perPage;
  int? currentPage;
  int? totalPages;
  Links?links;

  factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
    total: json["total"],
    count: json["count"],
    perPage: json["per_page"],
    currentPage: json["current_page"],
    totalPages: json["total_pages"],
    links: Links.fromJson(json["links"]),
  );

  Map<String, dynamic> toJson() => {
    "total": total,
    "count": count,
    "per_page": perPage,
    "current_page": currentPage,
    "total_pages": totalPages,
    "links": links?.toJson(),
  };
}

class Links {
  Links({
    required this.next,
  });

  String next;

  factory Links.fromJson(Map<String, dynamic> json) => Links(
    next: json["next"],
  );

  Map<String, dynamic> toJson() => {
    "next": next,
  };
}
