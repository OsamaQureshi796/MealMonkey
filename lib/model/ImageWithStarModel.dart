class ImageWithStarModel {
  String image, label, desc;
  double starCount;

  ImageWithStarModel({this.image, this.desc, this.starCount, this.label});


  factory ImageWithStarModel.fromJson(Map<String,dynamic> dishData){
    return ImageWithStarModel(
      image: dishData['image']??"",
      label: dishData['lable']??"",
      desc: dishData['desc']??"",
      starCount: dishData['star']??0.0
    );
  }

}
