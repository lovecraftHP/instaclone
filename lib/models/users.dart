class Usuarios {
  String name;
  String image;
  int num_pub;
  int num_seg;
  int seguidos;

  Usuarios({this.name,this.image,this.num_pub,this.num_seg,this.seguidos});
}

List<Usuarios> userData =[
  new Usuarios(
    name: 'Drake',
    image: 'http://ort.com.mx/wp-content/uploads/2018/10/d.jpg',
    num_pub: 100,
    num_seg: 20000000,
    seguidos: 10
  ),
  new Usuarios(
    name: 'Eminem',
    image: 'https://www.gannett-cdn.com/presto/2018/09/06/PDTF/c9571445-4fc8-4156-8562-dd11d01e6b4a-Detroit_rapper_Eminem-13.JPG?width=534&height=712&fit=bounds&auto=webp',
    num_pub: 100,
    num_seg: 100000000,
    seguidos: 10
  )
];