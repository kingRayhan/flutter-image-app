class ImageModel {
  int id;
  String url;
  String title;

  ImageModel({this.id, this.title, this.url});

  ImageModel.fromJson(Map<String, dynamic> parsedJson) {
    id = parsedJson['id'];
    url = parsedJson['url'];
    title = parsedJson['title'];
  }

  @override
  String toString() {
    return "{ id: $id , url: $url , title: $title }";
  }
}
