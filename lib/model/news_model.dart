class NewsModel {
  int? id;
  String? date;
  String? dateGmt;
  String? modified;
  String? modifiedGmt;
  String? slug;
  String? status;
  String? type;
  String? link;
  Title? title;
  Content? content;
  Excerpt? excerpt;
  int? author;
  int? featuredMedia;
  String? commentStatus;
  String? pingStatus;
  bool? sticky;
  String? template;
  String? format;
  List<dynamic>? meta;
  List<int>? categories;
  List<int>? tags;
  BetterFeaturedImage? betterFeaturedImage;
  List<dynamic>? acf;
  List<dynamic>? aioseoNotices;
  Links? links;

  NewsModel({
    this.id,
    this.date,
    this.dateGmt,
    this.modified,
    this.modifiedGmt,
    this.slug,
    this.status,
    this.type,
    this.link,
    this.title,
    this.content,
    this.excerpt,
    this.author,
    this.featuredMedia,
    this.commentStatus,
    this.pingStatus,
    this.sticky,
    this.template,
    this.format,
    this.meta,
    this.categories,
    this.tags,
    this.betterFeaturedImage,
    this.acf,
    this.aioseoNotices,
    this.links,
  });

  NewsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = json['date'];
    dateGmt = json['date_gmt'];
    modified = json['modified'];
    modifiedGmt = json['modified_gmt'];
    slug = json['slug'];
    status = json['status'];
    type = json['type'];
    link = json['link'];
    title = json['title'] != null ? Title.fromJson(json['title']) : null;
    content = json['content'] != null
        ? Content.fromJson(json['content'])
        : null;
    excerpt = json['excerpt'] != null
        ? Excerpt.fromJson(json['excerpt'])
        : null;
    author = json['author'];
    featuredMedia = json['featured_media'];
    commentStatus = json['comment_status'];
    pingStatus = json['ping_status'];
    sticky = json['sticky'];
    template = json['template'];
    format = json['format'];
    meta = json['meta'];
    categories = json['categories']?.cast<int>();
    tags = json['tags']?.cast<int>();
    betterFeaturedImage = json['better_featured_image'] != null
        ? BetterFeaturedImage.fromJson(json['better_featured_image'])
        : null;
    acf = json['acf'];
    aioseoNotices = json['aioseo_notices'];
    links = json['_links'] != null ? Links.fromJson(json['_links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['date'] = date;
    data['date_gmt'] = dateGmt;
    data['modified'] = modified;
    data['modified_gmt'] = modifiedGmt;
    data['slug'] = slug;
    data['status'] = status;
    data['type'] = type;
    data['link'] = link;
    if (title != null) {
      data['title'] = title!.toJson();
    }
    if (content != null) {
      data['content'] = content!.toJson();
    }
    if (excerpt != null) {
      data['excerpt'] = excerpt!.toJson();
    }
    data['author'] = author;
    data['featured_media'] = featuredMedia;
    data['comment_status'] = commentStatus;
    data['ping_status'] = pingStatus;
    data['sticky'] = sticky;
    data['template'] = template;
    data['format'] = format;
    data['meta'] = meta;
    data['categories'] = categories;
    data['tags'] = tags;
    if (betterFeaturedImage != null) {
      data['better_featured_image'] = betterFeaturedImage!.toJson();
    }
    data['acf'] = acf;
    data['aioseo_notices'] = aioseoNotices;
    if (links != null) {
      data['_links'] = links!.toJson();
    }
    return data;
  }

  static List<NewsModel> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => NewsModel.fromJson(json)).toList();
  }
}

class Title {
  String? rendered;

  Title({this.rendered});

  Title.fromJson(Map<String, dynamic> json) {
    rendered = json['rendered'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['rendered'] = rendered;
    return data;
  }
}

class Content {
  String? rendered;
  bool? protected;

  Content({this.rendered, this.protected});

  Content.fromJson(Map<String, dynamic> json) {
    rendered = json['rendered'];
    protected = json['protected'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['rendered'] = rendered;
    data['protected'] = protected;
    return data;
  }
}

class Excerpt {
  String? rendered;
  bool? protected;

  Excerpt({this.rendered, this.protected});

  Excerpt.fromJson(Map<String, dynamic> json) {
    rendered = json['rendered'];
    protected = json['protected'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['rendered'] = rendered;
    data['protected'] = protected;
    return data;
  }
}

class BetterFeaturedImage {
  int? id;
  String? altText;
  String? caption;
  String? description;
  String? mediaType;
  MediaDetails? mediaDetails;
  int? post;
  String? sourceUrl;

  BetterFeaturedImage({
    this.id,
    this.altText,
    this.caption,
    this.description,
    this.mediaType,
    this.mediaDetails,
    this.post,
    this.sourceUrl,
  });

  BetterFeaturedImage.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    altText = json['alt_text'];
    caption = json['caption'];
    description = json['description'];
    mediaType = json['media_type'];
    mediaDetails = json['media_details'] != null
        ? MediaDetails.fromJson(json['media_details'])
        : null;
    post = json['post'];
    sourceUrl = json['source_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['alt_text'] = altText;
    data['caption'] = caption;
    data['description'] = description;
    data['media_type'] = mediaType;
    if (mediaDetails != null) {
      data['media_details'] = mediaDetails!.toJson();
    }
    data['post'] = post;
    data['source_url'] = sourceUrl;
    return data;
  }
}

class MediaDetails {
  int? width;
  int? height;
  String? file;
  int? filesize;
  Sizes? sizes;
  ImageMeta? imageMeta;

  MediaDetails({
    this.width,
    this.height,
    this.file,
    this.filesize,
    this.sizes,
    this.imageMeta,
  });

  MediaDetails.fromJson(Map<String, dynamic> json) {
    width = json['width'];
    height = json['height'];
    file = json['file'];
    filesize = json['filesize'];
    sizes = json['sizes'] != null ? Sizes.fromJson(json['sizes']) : null;
    imageMeta = json['image_meta'] != null
        ? ImageMeta.fromJson(json['image_meta'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['width'] = width;
    data['height'] = height;
    data['file'] = file;
    data['filesize'] = filesize;
    if (sizes != null) {
      data['sizes'] = sizes!.toJson();
    }
    if (imageMeta != null) {
      data['image_meta'] = imageMeta!.toJson();
    }
    return data;
  }
}

class Sizes {
  Medium? medium;
  Large? large;
  Thumbnail? thumbnail;
  MediumLarge? mediumLarge;
  PostThumbnail? postThumbnail;
  MvpPostThumb? mvpPostThumb;
  MvpPortThumb? mvpPortThumb;
  MvpLargeThumb? mvpLargeThumb;
  MvpMidThumb? mvpMidThumb;
  MvpSmallThumb? mvpSmallThumb;

  Sizes({
    this.medium,
    this.large,
    this.thumbnail,
    this.mediumLarge,
    this.postThumbnail,
    this.mvpPostThumb,
    this.mvpPortThumb,
    this.mvpLargeThumb,
    this.mvpMidThumb,
    this.mvpSmallThumb,
  });

  Sizes.fromJson(Map<String, dynamic> json) {
    medium = json['medium'] != null ? Medium.fromJson(json['medium']) : null;
    large = json['large'] != null ? Large.fromJson(json['large']) : null;
    thumbnail = json['thumbnail'] != null
        ? Thumbnail.fromJson(json['thumbnail'])
        : null;
    mediumLarge = json['medium_large'] != null
        ? MediumLarge.fromJson(json['medium_large'])
        : null;
    postThumbnail = json['post-thumbnail'] != null
        ? PostThumbnail.fromJson(json['post-thumbnail'])
        : null;
    mvpPostThumb = json['mvp-post-thumb'] != null
        ? MvpPostThumb.fromJson(json['mvp-post-thumb'])
        : null;
    mvpPortThumb = json['mvp-port-thumb'] != null
        ? MvpPortThumb.fromJson(json['mvp-port-thumb'])
        : null;
    mvpLargeThumb = json['mvp-large-thumb'] != null
        ? MvpLargeThumb.fromJson(json['mvp-large-thumb'])
        : null;
    mvpMidThumb = json['mvp-mid-thumb'] != null
        ? MvpMidThumb.fromJson(json['mvp-mid-thumb'])
        : null;
    mvpSmallThumb = json['mvp-small-thumb'] != null
        ? MvpSmallThumb.fromJson(json['mvp-small-thumb'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (medium != null) {
      data['medium'] = medium!.toJson();
    }
    if (large != null) {
      data['large'] = large!.toJson();
    }
    if (thumbnail != null) {
      data['thumbnail'] = thumbnail!.toJson();
    }
    if (mediumLarge != null) {
      data['medium_large'] = mediumLarge!.toJson();
    }
    if (postThumbnail != null) {
      data['post-thumbnail'] = postThumbnail!.toJson();
    }
    if (mvpPostThumb != null) {
      data['mvp-post-thumb'] = mvpPostThumb!.toJson();
    }
    if (mvpPortThumb != null) {
      data['mvp-port-thumb'] = mvpPortThumb!.toJson();
    }
    if (mvpLargeThumb != null) {
      data['mvp-large-thumb'] = mvpLargeThumb!.toJson();
    }
    if (mvpMidThumb != null) {
      data['mvp-mid-thumb'] = mvpMidThumb!.toJson();
    }
    if (mvpSmallThumb != null) {
      data['mvp-small-thumb'] = mvpSmallThumb!.toJson();
    }
    return data;
  }
}

class Medium {
  String? file;
  int? width;
  int? height;
  String? mimeType;
  int? filesize;
  String? sourceUrl;

  Medium({
    this.file,
    this.width,
    this.height,
    this.mimeType,
    this.filesize,
    this.sourceUrl,
  });

  Medium.fromJson(Map<String, dynamic> json) {
    file = json['file'];
    width = json['width'];
    height = json['height'];
    mimeType = json['mime-type'];
    filesize = json['filesize'];
    sourceUrl = json['source_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['file'] = file;
    data['width'] = width;
    data['height'] = height;
    data['mime-type'] = mimeType;
    data['filesize'] = filesize;
    data['source_url'] = sourceUrl;
    return data;
  }
}

class Large {
  String? file;
  int? width;
  int? height;
  String? mimeType;
  int? filesize;
  String? sourceUrl;

  Large({
    this.file,
    this.width,
    this.height,
    this.mimeType,
    this.filesize,
    this.sourceUrl,
  });

  Large.fromJson(Map<String, dynamic> json) {
    file = json['file'];
    width = json['width'];
    height = json['height'];
    mimeType = json['mime-type'];
    filesize = json['filesize'];
    sourceUrl = json['source_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['file'] = file;
    data['width'] = width;
    data['height'] = height;
    data['mime-type'] = mimeType;
    data['filesize'] = filesize;
    data['source_url'] = sourceUrl;
    return data;
  }
}

class Thumbnail {
  String? file;
  int? width;
  int? height;
  String? mimeType;
  int? filesize;
  String? sourceUrl;

  Thumbnail({
    this.file,
    this.width,
    this.height,
    this.mimeType,
    this.filesize,
    this.sourceUrl,
  });

  Thumbnail.fromJson(Map<String, dynamic> json) {
    file = json['file'];
    width = json['width'];
    height = json['height'];
    mimeType = json['mime-type'];
    filesize = json['filesize'];
    sourceUrl = json['source_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['file'] = file;
    data['width'] = width;
    data['height'] = height;
    data['mime-type'] = mimeType;
    data['filesize'] = filesize;
    data['source_url'] = sourceUrl;
    return data;
  }
}

class MediumLarge {
  String? file;
  int? width;
  int? height;
  String? mimeType;
  int? filesize;
  String? sourceUrl;

  MediumLarge({
    this.file,
    this.width,
    this.height,
    this.mimeType,
    this.filesize,
    this.sourceUrl,
  });

  MediumLarge.fromJson(Map<String, dynamic> json) {
    file = json['file'];
    width = json['width'];
    height = json['height'];
    mimeType = json['mime-type'];
    filesize = json['filesize'];
    sourceUrl = json['source_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['file'] = file;
    data['width'] = width;
    data['height'] = height;
    data['mime-type'] = mimeType;
    data['filesize'] = filesize;
    data['source_url'] = sourceUrl;
    return data;
  }
}

class PostThumbnail {
  String? file;
  int? width;
  int? height;
  String? mimeType;
  int? filesize;
  String? sourceUrl;

  PostThumbnail({
    this.file,
    this.width,
    this.height,
    this.mimeType,
    this.filesize,
    this.sourceUrl,
  });

  PostThumbnail.fromJson(Map<String, dynamic> json) {
    file = json['file'];
    width = json['width'];
    height = json['height'];
    mimeType = json['mime-type'];
    filesize = json['filesize'];
    sourceUrl = json['source_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['file'] = file;
    data['width'] = width;
    data['height'] = height;
    data['mime-type'] = mimeType;
    data['filesize'] = filesize;
    data['source_url'] = sourceUrl;
    return data;
  }
}

class MvpPostThumb {
  String? file;
  int? width;
  int? height;
  String? mimeType;
  int? filesize;
  String? sourceUrl;

  MvpPostThumb({
    this.file,
    this.width,
    this.height,
    this.mimeType,
    this.filesize,
    this.sourceUrl,
  });

  MvpPostThumb.fromJson(Map<String, dynamic> json) {
    file = json['file'];
    width = json['width'];
    height = json['height'];
    mimeType = json['mime-type'];
    filesize = json['filesize'];
    sourceUrl = json['source_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['file'] = file;
    data['width'] = width;
    data['height'] = height;
    data['mime-type'] = mimeType;
    data['filesize'] = filesize;
    data['source_url'] = sourceUrl;
    return data;
  }
}

class MvpPortThumb {
  String? file;
  int? width;
  int? height;
  String? mimeType;
  int? filesize;
  String? sourceUrl;

  MvpPortThumb({
    this.file,
    this.width,
    this.height,
    this.mimeType,
    this.filesize,
    this.sourceUrl,
  });

  MvpPortThumb.fromJson(Map<String, dynamic> json) {
    file = json['file'];
    width = json['width'];
    height = json['height'];
    mimeType = json['mime-type'];
    filesize = json['filesize'];
    sourceUrl = json['source_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['file'] = file;
    data['width'] = width;
    data['height'] = height;
    data['mime-type'] = mimeType;
    data['filesize'] = filesize;
    data['source_url'] = sourceUrl;
    return data;
  }
}

class MvpLargeThumb {
  String? file;
  int? width;
  int? height;
  String? mimeType;
  int? filesize;
  String? sourceUrl;

  MvpLargeThumb({
    this.file,
    this.width,
    this.height,
    this.mimeType,
    this.filesize,
    this.sourceUrl,
  });

  MvpLargeThumb.fromJson(Map<String, dynamic> json) {
    file = json['file'];
    width = json['width'];
    height = json['height'];
    mimeType = json['mime-type'];
    filesize = json['filesize'];
    sourceUrl = json['source_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['file'] = file;
    data['width'] = width;
    data['height'] = height;
    data['mime-type'] = mimeType;
    data['filesize'] = filesize;
    data['source_url'] = sourceUrl;
    return data;
  }
}

class MvpMidThumb {
  String? file;
  int? width;
  int? height;
  String? mimeType;
  int? filesize;
  String? sourceUrl;

  MvpMidThumb({
    this.file,
    this.width,
    this.height,
    this.mimeType,
    this.filesize,
    this.sourceUrl,
  });

  MvpMidThumb.fromJson(Map<String, dynamic> json) {
    file = json['file'];
    width = json['width'];
    height = json['height'];
    mimeType = json['mime-type'];
    filesize = json['filesize'];
    sourceUrl = json['source_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['file'] = file;
    data['width'] = width;
    data['height'] = height;
    data['mime-type'] = mimeType;
    data['filesize'] = filesize;
    data['source_url'] = sourceUrl;
    return data;
  }
}

class MvpSmallThumb {
  String? file;
  int? width;
  int? height;
  String? mimeType;
  int? filesize;
  String? sourceUrl;

  MvpSmallThumb({
    this.file,
    this.width,
    this.height,
    this.mimeType,
    this.filesize,
    this.sourceUrl,
  });

  MvpSmallThumb.fromJson(Map<String, dynamic> json) {
    file = json['file'];
    width = json['width'];
    height = json['height'];
    mimeType = json['mime-type'];
    filesize = json['filesize'];
    sourceUrl = json['source_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['file'] = file;
    data['width'] = width;
    data['height'] = height;
    data['mime-type'] = mimeType;
    data['filesize'] = filesize;
    data['source_url'] = sourceUrl;
    return data;
  }
}

class ImageMeta {
  String? aperture;
  String? credit;
  String? camera;
  String? caption;
  String? createdTimestamp;
  String? copyright;
  String? focalLength;
  String? iso;
  String? shutterSpeed;
  String? title;
  String? orientation;
  List<dynamic>? keywords;

  ImageMeta({
    this.aperture,
    this.credit,
    this.camera,
    this.caption,
    this.createdTimestamp,
    this.copyright,
    this.focalLength,
    this.iso,
    this.shutterSpeed,
    this.title,
    this.orientation,
    this.keywords,
  });

  ImageMeta.fromJson(Map<String, dynamic> json) {
    aperture = json['aperture'];
    credit = json['credit'];
    camera = json['camera'];
    caption = json['caption'];
    createdTimestamp = json['created_timestamp'];
    copyright = json['copyright'];
    focalLength = json['focal_length'];
    iso = json['iso'];
    shutterSpeed = json['shutter_speed'];
    title = json['title'];
    orientation = json['orientation'];
    keywords = json['keywords'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['aperture'] = aperture;
    data['credit'] = credit;
    data['camera'] = camera;
    data['caption'] = caption;
    data['created_timestamp'] = createdTimestamp;
    data['copyright'] = copyright;
    data['focal_length'] = focalLength;
    data['iso'] = iso;
    data['shutter_speed'] = shutterSpeed;
    data['title'] = title;
    data['orientation'] = orientation;
    data['keywords'] = keywords;
    return data;
  }
}

class Links {
  List<Self>? self;
  List<Collection>? collection;
  List<About>? about;
  List<Author>? author;
  List<Replies>? replies;
  List<VersionHistory>? versionHistory;
  List<PredecessorVersion>? predecessorVersion;
  List<WpFeaturedmedia>? wpFeaturedmedia;
  List<WpAttachment>? wpAttachment;
  List<WpTerm>? wpTerm;
  List<Curies>? curies;

  Links({
    this.self,
    this.collection,
    this.about,
    this.author,
    this.replies,
    this.versionHistory,
    this.predecessorVersion,
    this.wpFeaturedmedia,
    this.wpAttachment,
    this.wpTerm,
    this.curies,
  });

  Links.fromJson(Map<String, dynamic> json) {
    if (json['self'] != null) {
      self = <Self>[];
      json['self'].forEach((v) {
        self!.add(Self.fromJson(v));
      });
    }
    if (json['collection'] != null) {
      collection = <Collection>[];
      json['collection'].forEach((v) {
        collection!.add(Collection.fromJson(v));
      });
    }
    if (json['about'] != null) {
      about = <About>[];
      json['about'].forEach((v) {
        about!.add(About.fromJson(v));
      });
    }
    if (json['author'] != null) {
      author = <Author>[];
      json['author'].forEach((v) {
        author!.add(Author.fromJson(v));
      });
    }
    if (json['replies'] != null) {
      replies = <Replies>[];
      json['replies'].forEach((v) {
        replies!.add(Replies.fromJson(v));
      });
    }
    if (json['version-history'] != null) {
      versionHistory = <VersionHistory>[];
      json['version-history'].forEach((v) {
        versionHistory!.add(VersionHistory.fromJson(v));
      });
    }
    if (json['predecessor-version'] != null) {
      predecessorVersion = <PredecessorVersion>[];
      json['predecessor-version'].forEach((v) {
        predecessorVersion!.add(PredecessorVersion.fromJson(v));
      });
    }
    if (json['wp:featuredmedia'] != null) {
      wpFeaturedmedia = <WpFeaturedmedia>[];
      json['wp:featuredmedia'].forEach((v) {
        wpFeaturedmedia!.add(WpFeaturedmedia.fromJson(v));
      });
    }
    if (json['wp:attachment'] != null) {
      wpAttachment = <WpAttachment>[];
      json['wp:attachment'].forEach((v) {
        wpAttachment!.add(WpAttachment.fromJson(v));
      });
    }
    if (json['wp:term'] != null) {
      wpTerm = <WpTerm>[];
      json['wp:term'].forEach((v) {
        wpTerm!.add(WpTerm.fromJson(v));
      });
    }
    if (json['curies'] != null) {
      curies = <Curies>[];
      json['curies'].forEach((v) {
        curies!.add(Curies.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (self != null) {
      data['self'] = self!.map((v) => v.toJson()).toList();
    }
    if (collection != null) {
      data['collection'] = collection!.map((v) => v.toJson()).toList();
    }
    if (about != null) {
      data['about'] = about!.map((v) => v.toJson()).toList();
    }
    if (author != null) {
      data['author'] = author!.map((v) => v.toJson()).toList();
    }
    if (replies != null) {
      data['replies'] = replies!.map((v) => v.toJson()).toList();
    }
    if (versionHistory != null) {
      data['version-history'] = versionHistory!.map((v) => v.toJson()).toList();
    }
    if (predecessorVersion != null) {
      data['predecessor-version'] = predecessorVersion!
          .map((v) => v.toJson())
          .toList();
    }
    if (wpFeaturedmedia != null) {
      data['wp:featuredmedia'] = wpFeaturedmedia!
          .map((v) => v.toJson())
          .toList();
    }
    if (wpAttachment != null) {
      data['wp:attachment'] = wpAttachment!.map((v) => v.toJson()).toList();
    }
    if (wpTerm != null) {
      data['wp:term'] = wpTerm!.map((v) => v.toJson()).toList();
    }
    if (curies != null) {
      data['curies'] = curies!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Self {
  String? href;

  Self({this.href});

  Self.fromJson(Map<String, dynamic> json) {
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['href'] = href;
    return data;
  }
}

class Collection {
  String? href;

  Collection({this.href});

  Collection.fromJson(Map<String, dynamic> json) {
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['href'] = href;
    return data;
  }
}

class About {
  String? href;

  About({this.href});

  About.fromJson(Map<String, dynamic> json) {
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['href'] = href;
    return data;
  }
}

class Author {
  bool? embeddable;
  String? href;

  Author({this.embeddable, this.href});

  Author.fromJson(Map<String, dynamic> json) {
    embeddable = json['embeddable'];
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['embeddable'] = embeddable;
    data['href'] = href;
    return data;
  }
}

class Replies {
  bool? embeddable;
  String? href;

  Replies({this.embeddable, this.href});

  Replies.fromJson(Map<String, dynamic> json) {
    embeddable = json['embeddable'];
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['embeddable'] = embeddable;
    data['href'] = href;
    return data;
  }
}

class VersionHistory {
  int? count;
  String? href;

  VersionHistory({this.count, this.href});

  VersionHistory.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['count'] = count;
    data['href'] = href;
    return data;
  }
}

class PredecessorVersion {
  int? id;
  String? href;

  PredecessorVersion({this.id, this.href});

  PredecessorVersion.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['href'] = href;
    return data;
  }
}

class WpFeaturedmedia {
  bool? embeddable;
  String? href;

  WpFeaturedmedia({this.embeddable, this.href});

  WpFeaturedmedia.fromJson(Map<String, dynamic> json) {
    embeddable = json['embeddable'];
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['embeddable'] = embeddable;
    data['href'] = href;
    return data;
  }
}

class WpAttachment {
  String? href;

  WpAttachment({this.href});

  WpAttachment.fromJson(Map<String, dynamic> json) {
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['href'] = href;
    return data;
  }
}

class WpTerm {
  String? taxonomy;
  bool? embeddable;
  String? href;

  WpTerm({this.taxonomy, this.embeddable, this.href});

  WpTerm.fromJson(Map<String, dynamic> json) {
    taxonomy = json['taxonomy'];
    embeddable = json['embeddable'];
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['taxonomy'] = taxonomy;
    data['embeddable'] = embeddable;
    data['href'] = href;
    return data;
  }
}

class Curies {
  String? name;
  String? href;
  bool? templated;

  Curies({this.name, this.href, this.templated});

  Curies.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    href = json['href'];
    templated = json['templated'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['href'] = href;
    data['templated'] = templated;
    return data;
  }
}
