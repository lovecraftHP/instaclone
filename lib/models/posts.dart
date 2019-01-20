import './users.dart';
class Post{
  Usuarios user;
  String image;

  Post(this.user,this.image);
}

List<Post> postData= [
  new Post(userData[0], 'assets/food.jpg'),
  new Post(userData[1], 'assets/food.jpg'),
  new Post(userData[0], 'assets/food.jpg'),
  new Post(userData[1], 'assets/food.jpg'),
  new Post(userData[0], 'assets/food.jpg'),
];