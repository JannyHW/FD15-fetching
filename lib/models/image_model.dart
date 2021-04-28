//create a model for each image

class ImageModel {
  int id;
  String url;
  String title;

  ImageModel({this.id, this.url, this.title});

  //why?
  ImageModel.fromJson(Map<String, dynamic> parsedJson) {
    id = parsedJson['id'];
    url = parsedJson['url'];
    title = parsedJson['title'];
  }
}
