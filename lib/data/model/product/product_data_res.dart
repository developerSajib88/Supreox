import 'dart:convert';

class ProductDataRes {
  final List<Menu>? menu;
  final int? vat;
  final String? note;

  ProductDataRes({
    this.menu,
    this.vat,
    this.note,
  });

  ProductDataRes copyWith({
    List<Menu>? menu,
    int? vat,
    String? note,
  }) =>
      ProductDataRes(
        menu: menu ?? this.menu,
        vat: vat ?? this.vat,
        note: note ?? this.note,
      );

  factory ProductDataRes.fromRawJson(String str) => ProductDataRes.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProductDataRes.fromJson(Map<String, dynamic> json) => ProductDataRes(
    menu: json["menu"] == null ? [] : List<Menu>.from(json["menu"]!.map((x) => Menu.fromJson(x))),
    vat: json["vat"],
    note: json["note"],
  );

  Map<String, dynamic> toJson() => {
    "menu": menu == null ? [] : List<dynamic>.from(menu!.map((x) => x.toJson())),
    "vat": vat,
    "note": note,
  };
}

class Menu {
  final int? id;
  final String? name;
  final String? slug;
  final String? image;
  final String? description;
  final int? price;
  final int? discountPrice;

  Menu({
    this.id,
    this.name,
    this.slug,
    this.image,
    this.description,
    this.price,
    this.discountPrice,
  });

  Menu copyWith({
    int? id,
    String? name,
    String? slug,
    String? image,
    String? description,
    int? price,
    int? discountPrice,
  }) =>
      Menu(
        id: id ?? this.id,
        name: name ?? this.name,
        slug: slug ?? this.slug,
        image: image ?? this.image,
        description: description ?? this.description,
        price: price ?? this.price,
        discountPrice: discountPrice ?? this.discountPrice,
      );

  factory Menu.fromRawJson(String str) => Menu.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Menu.fromJson(Map<String, dynamic> json) => Menu(
    id: json["id"],
    name: json["name"],
    slug: json["slug"],
    image: json["image"],
    description: json["description"],
    price: json["price"],
    discountPrice: json["discount_price"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "slug": slug,
    "image": image,
    "description": description,
    "price": price,
    "discount_price": discountPrice,
  };
}
