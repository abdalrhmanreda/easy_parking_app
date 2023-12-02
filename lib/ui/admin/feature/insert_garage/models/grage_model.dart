class GarageModel {
  int? id;
  String? name;
  int? numFloors;
  String? location;
  String? lat;
  String? lon;
  int? rate;
  String? img;
  String? desc;
  num? price;
  String? createdAt;
  String? updatedAt;

  GarageModel(
      {this.id,
      this.name,
      this.numFloors,
      this.location,
      this.lat,
      this.lon,
      this.rate,
      this.img,
      this.desc,
      this.price,
      this.createdAt,
      this.updatedAt});

  GarageModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    numFloors = json['numFloors'];
    location = json['location'];
    lat = json['lat'];
    lon = json['longt'];
    rate = json['rate'];
    img = json['img'];
    desc = json['desc'];
    price = json['price'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['numFloors'] = numFloors;
    data['location'] = location;
    data['lat'] = lat;
    data['longt'] = lon;
    data['rate'] = rate;
    data['img'] = img;
    data['desc'] = desc;
    data['price'] = price;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
