//this is Copilot BookModel Version : To be compared later
//Its Usage Section is Below: Just in case we need it

class BookVolume {
  final String id;
  final String title;
  final String? subtitle;
  final List<String>? authors;
  final String? publishedDate;
  final List<IndustryIdentifier>? industryIdentifiers;
  final int? pageCount;
  final String? printType;
  final List<String>? categories;
  final String? maturityRating;
  final bool allowAnonLogging;
  final ImageLinks? imageLinks;
  final String? language;
  final String? previewLink;
  final String? infoLink;
  final String? canonicalVolumeLink;

  BookVolume({
    required this.id,
    required this.title,
    this.subtitle,
    this.authors,
    this.publishedDate,
    this.industryIdentifiers,
    this.pageCount,
    this.printType,
    this.categories,
    this.maturityRating,
    required this.allowAnonLogging,
    this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
  });

  factory BookVolume.fromJson(Map<String, dynamic> json) {
    return BookVolume(
      id: json['id'] ?? '',
      title: json['volumeInfo']['title'] ?? '',
      subtitle: json['volumeInfo']['subtitle'],
      authors:
          (json['volumeInfo']['authors'] as List?)
              ?.map((e) => e.toString())
              .toList(),
      publishedDate: json['volumeInfo']['publishedDate'],
      industryIdentifiers:
          (json['volumeInfo']['industryIdentifiers'] as List?)
              ?.map((e) => IndustryIdentifier.fromJson(e))
              .toList(),
      pageCount: json['volumeInfo']['pageCount'],
      printType: json['volumeInfo']['printType'],
      categories:
          (json['volumeInfo']['categories'] as List?)
              ?.map((e) => e.toString())
              .toList(),
      maturityRating: json['volumeInfo']['maturityRating'],
      allowAnonLogging: json['volumeInfo']['allowAnonLogging'] ?? false,
      imageLinks:
          json['volumeInfo']['imageLinks'] != null
              ? ImageLinks.fromJson(json['volumeInfo']['imageLinks'])
              : null,
      language: json['volumeInfo']['language'],
      previewLink: json['volumeInfo']['previewLink'],
      infoLink: json['volumeInfo']['infoLink'],
      canonicalVolumeLink: json['volumeInfo']['canonicalVolumeLink'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'subtitle': subtitle,
      'authors': authors,
      'publishedDate': publishedDate,
      'industryIdentifiers':
          industryIdentifiers?.map((e) => e.toJson()).toList(),
      'pageCount': pageCount,
      'printType': printType,
      'categories': categories,
      'maturityRating': maturityRating,
      'allowAnonLogging': allowAnonLogging,
      'imageLinks': imageLinks?.toJson(),
      'language': language,
      'previewLink': previewLink,
      'infoLink': infoLink,
      'canonicalVolumeLink': canonicalVolumeLink,
    };
  }
}

class IndustryIdentifier {
  final String type;
  final String identifier;

  IndustryIdentifier({required this.type, required this.identifier});

  factory IndustryIdentifier.fromJson(Map<String, dynamic> json) {
    return IndustryIdentifier(
      type: json['type'] ?? '',
      identifier: json['identifier'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {'type': type, 'identifier': identifier};
  }
}

class ImageLinks {
  final String smallThumbnail;
  final String thumbnail;

  ImageLinks({required this.smallThumbnail, required this.thumbnail});

  factory ImageLinks.fromJson(Map<String, dynamic> json) {
    return ImageLinks(
      smallThumbnail: json['smallThumbnail'] ?? '',
      thumbnail: json['thumbnail'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {'smallThumbnail': smallThumbnail, 'thumbnail': thumbnail};
  }
}



//Usage Section

/**void main() {
  String jsonResponse = '''{
    "id": "3bRK7BvaVB8C",
    "volumeInfo": {
      "title": "A Presentation by National 4-H Conference Participants",
      "subtitle": "Hearing Before the Subcommittee",
      "authors": ["United States Congress"],
      "publishedDate": "2015",
      "industryIdentifiers": [{"type": "OTHER", "identifier": "STANFORD:36105050689525"}],
      "pageCount": 52,
      "printType": "BOOK",
      "categories": ["Agricultural innovations"],
      "maturityRating": "NOT_MATURE",
      "allowAnonLogging": false,
      "imageLinks": {
        "smallThumbnail": "http://books.google.com/...smallThumbnail",
        "thumbnail": "http://books.google.com/...thumbnail"
      },
      "language": "en",
      "previewLink": "http://books.google.com/...preview",
      "infoLink": "https://play.google.com/...info",
      "canonicalVolumeLink": "https://play.google.com/...canonical"
    }
  }''';

  Map<String, dynamic> parsedJson = jsonDecode(jsonResponse);
  BookVolume book = BookVolume.fromJson(parsedJson);

  print('Title: ${book.title}');
} */