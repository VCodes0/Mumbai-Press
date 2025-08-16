class MenuModel {
  int? id;
  String? name;
  String? slug;
  String? description;
  int? count;
  List<Items>? items;
  Meta? meta;

  MenuModel({
    this.id,
    this.name,
    this.slug,
    this.description,
    this.count,
    this.items,
    this.meta,
  });

  MenuModel.fromJson(Map<String, dynamic> json) {
    id = json["ID"];
    name = json["name"];
    slug = json["slug"];
    description = json["description"];
    count = json["count"];
    items = json["items"] == null
        ? null
        : (json["items"] as List).map((e) => Items.fromJson(e)).toList();
    meta = json["meta"] == null ? null : Meta.fromJson(json["meta"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["ID"] = id;
    data["name"] = name;
    data["slug"] = slug;
    data["description"] = description;
    data["count"] = count;
    if (items != null) {
      data["items"] = items?.map((e) => e.toJson()).toList();
    }
    if (meta != null) {
      data["meta"] = meta?.toJson();
    }
    return data;
  }

  static List<MenuModel> getItems(List itemsData) {
    return itemsData.map((e) => MenuModel.fromJson(e)).toList();
  }
}

class Meta {
  Links? links;

  Meta({this.links});

  Meta.fromJson(Map<String, dynamic> json) {
    links = json["links"] == null ? null : Links.fromJson(json["links"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (links != null) {
      data["links"] = links?.toJson();
    }
    return data;
  }

  static List<Meta> getItems(List itemsData) {
    return itemsData.map((e) => Meta.fromJson(e)).toList();
  }
}

class Links {
  String? collection;
  String? self;

  Links({this.collection, this.self});

  Links.fromJson(Map<String, dynamic> json) {
    collection = json["collection"];
    self = json["self"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["collection"] = collection;
    data["self"] = self;
    return data;
  }

  static List<Links> getItems(List itemsData) {
    return itemsData.map((e) => Links.fromJson(e)).toList();
  }
}

class Items {
  int? id;
  int? order;
  int? parent;
  String? title;
  String? url;
  String? attr;
  String? target;
  String? classes;
  String? xfn;
  String? description;
  int? categoriesId;
  String? object;
  String? objectSlug;
  String? type;
  String? typeLabel;

  Items({
    this.id,
    this.order,
    this.parent,
    this.title,
    this.url,
    this.attr,
    this.target,
    this.classes,
    this.xfn,
    this.description,
    this.categoriesId,
    this.object,
    this.objectSlug,
    this.type,
    this.typeLabel,
  });

  Items.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    order = json["order"];
    parent = json["parent"];
    title = json["title"];
    url = json["url"];
    attr = json["attr"];
    target = json["target"];
    classes = json["classes"];
    xfn = json["xfn"];
    description = json["description"];
    categoriesId = json["categories_id"];
    object = json["object"];
    objectSlug = json["object_slug"];
    type = json["type"];
    typeLabel = json["type_label"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["order"] = order;
    data["parent"] = parent;
    data["title"] = title;
    data["url"] = url;
    data["attr"] = attr;
    data["target"] = target;
    data["classes"] = classes;
    data["xfn"] = xfn;
    data["description"] = description;
    data["categories_id"] = categoriesId;
    data["object"] = object;
    data["object_slug"] = objectSlug;
    data["type"] = type;
    data["type_label"] = typeLabel;
    return data;
  }

  static List<Items> getItems(List itemsData) {
    return itemsData.map((e) => Items.fromJson(e)).toList();
  }
}
