class ImageWithLabelModel{

  String image,lable;

  ImageWithLabelModel({this.image,this.lable});

  factory ImageWithLabelModel.fromJson(var singleItem){
    return ImageWithLabelModel(
      image: singleItem['image']??"",
      lable: singleItem['title']??""
    );
  }

}