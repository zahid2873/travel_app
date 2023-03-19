class ModelPlace{
  String? img;
  String ? name;
  int? cost;
  String ? location;
  double ? rating;
  double ? number_review;
 String? description;

  ModelPlace({this.cost,this.name, this.img, this.location, this.rating,
      this.number_review, this.description});
}

List<ModelPlace> placeInfo= [
  ModelPlace(cost: 1750,name: "Swiss Alps",img: "https://assets.traveltriangle.com/blog/wp-content/uploads/2018/09/swiss-alps.jpg",location: "Switzerland",rating:5.0,number_review: 21,
      description:"The dramatic peaks of Dammastock and the snow-clad majestic summit of Matterhorn have always amazed and left hikers spellbound with its astonishing beauty. Matterhorn is 10th tallest amongst the several mountains of the world with a distinct feature of a well-defined pyramid shape. It is one of the most active fold mountains of the world and is featured on the world famous Toblerone Chocolate as its logo. The slopes of the Switzerland mountains are famous for the skiing and snowboarding activities. This is amongst the famous mountains in the world." ),

  ModelPlace(cost: 1350,name: "Mount Logan",img: "https://assets.traveltriangle.com/blog/wp-content/uploads/2018/09/mount-logan.jpg",location: "Canada",rating:4.9,number_review: 19,
      description:"Mount Logan is the tallest mountain in Canada, second highest summit in North America and has the largest circumference of the base when compared to the several mountain ranges of the world map. It is a part of Kluane National Park and Reserve. Hikers here can have an adventurous experiences of mountaineering in Canada while being surrounded by dense forests, iced rivers, picturesque landscapes, wild animals and several species of birds. Due to the tectonic action in this area, Mount Logan is continuing to grow in height even today. This is amongst the most famous mountains." ),

  ModelPlace(cost: 950,name: "Mount Fuji",img: "https://assets.traveltriangle.com/blog/wp-content/uploads/2018/09/mount-fuji.jpg",location: "Japan",rating:4.3,number_review: 9,
      description:"Mount Fuji is nearly 12,400 ft tall and is Japan’s No.1 tourist attraction. The breathtaking views here never fail to impress anybody who comes here. This is one of the most massive volcanic mountains in the world, which is active even now and majestically sits over a junction of three tectonic plates. Japan in July and August see the most amount of hikers attempting to climb this volcanic mountain and most of them make it to the summit successfully." ),

  ModelPlace(cost: 780,name: "Mauna Kea",img: "https://assets.traveltriangle.com/blog/wp-content/uploads/2018/09/Mauna-Kea.jpg",location: "USA",rating:4.8,number_review: 17,
      description:"Mt Everest is known to be the tallest mountain in the world, but if you consider the height of Mauna Kea which is hidden under the Pacific Ocean, then Mauna Kea would be the tallest peak of the world. It is an 8-hour tour to this place with a few stops in between for acclimatization. The top of this volcanic wonder houses the world’s leading astronomical observatories. During the nights the perfectly clear skies offer an amazing stargazing experience. This is one of the famous mountains around the globe." ),

  ModelPlace(cost: 690,name: "Jotunheimen ",img: "https://assets.traveltriangle.com/blog/wp-content/uploads/2018/09/Jotunheimen-Mountains.jpg",location: "Norway",rating:4.3,number_review: 13,
      description:"This is one of the major mountain ranges of the world. One can witness these beautiful Jotunheimen Mountains when on the Sognefjellet National Tourist Route. The best way to witness the beauty of this place is through a drive along Europe’s highest mountain pass. This area offers splendid views of the scenic beauty which are highly worthy of being photographed. During the drive, one can witness the magnificent view comprising of snow-capped mountain peaks, waterfalls with crystal clear water and lush greenery." ),

  ModelPlace(cost: 1150,name: "Kirkjufell",img: "https://assets.traveltriangle.com/blog/wp-content/uploads/2018/09/Kirkjufell.jpg",location: "Iceland",rating:4.8,number_review: 7,
      description:"Kirkjufell gained its popularity and got listed under the famous names of mountains after being featured in the 6th and 7th season of HBO original series Game Of Thrones. This small mountain peak looks beautiful covered fully in lush greenery during the summers and with pure white ice and snow during the winters. The well-known waterfall, Kirkjufellsfoss which is the most magnificent waterfalls of Iceland is also located in the backdrop of this splendid summit." ),

  ModelPlace(cost: 400,name: "Nanga Parbat",img: "https://assets.traveltriangle.com/blog/wp-content/uploads/2019/03/Nanga-Parbat.jpg",location: "Pakistan",rating:4.4,number_review: 14,
      description:"Running out of reasons to visit Pakistan? Well here’s one that the travel bug in you won’t let you cancel your plans ever. Being one of the best mountains in the world and forming one extreme of the Himalayan Ranges, Nanga Parbat in all its might, has the powers of casting a magical spell on the travelers at first sight. Literally translating into the naked mountain and also known as Diamir – the King of the mountains amidst the locals, Nanga Parbat stands tall at a height of about 26,660 feet in the heart of Pakistan. And if fairy meadows have been on your mind, this might be the place where you can find them!" ),


];

