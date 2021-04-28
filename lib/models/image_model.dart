//create a model for each image from JSON data
// {
// "albumId": 1,
// "id": 1,
// "title": "accusamus beatae ad facilis cum similique qui sunt",
// "url": "https://via.placeholder.com/600/92c952",
// "thumbnailUrl": "https://via.placeholder.com/150/92c952"
// },

class ImageModel {
  //proprety names here, based on property names from JSON above 
  int id;
  String url;
  String title;

  // option 1 to create a new instance
  ImageModel(this.id, this.url, this.title);

  //option 2 to create a new ImageModel instance out of JSON
  ImageModel.fromJson(Map<String, dynamic> parsedJson) {
    id = parsedJson['id'];
    url = parsedJson['url'];
    title = parsedJson['title'];
  }
}
