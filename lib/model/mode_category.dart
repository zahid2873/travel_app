class ModelCategories{
  String ?name;
  String ?img;
  bool? isClicked;

  ModelCategories({this.name,this.img,this.isClicked});
}

List <ModelCategories> categoryList = [
  ModelCategories(name: "Mountain",img: "https://static.vecteezy.com/system/resources/previews/013/534/585/original/nature-scene-with-river-and-hills-forest-and-mountain-landscape-flat-cartoon-style-illustration-free-vector.jpg",isClicked: true),
  ModelCategories(name: "Beach",img: "https://static.vecteezy.com/system/resources/previews/002/373/657/original/summer-beach-scenery-background-free-vector.jpg",isClicked: false),
  ModelCategories(name: "Party",img: "https://i.pinimg.com/originals/cc/bb/72/ccbb729e4f91a099e70936c08f40a9f5.jpg",isClicked: false),
  ModelCategories(name: "Jungle",img: "https://images.fineartamerica.com/images-medium-large-5/jungle-five-steve-crisp.jpg",isClicked: false),

];