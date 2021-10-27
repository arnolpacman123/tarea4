class Client {
  int id;
  String name;
  String address;
  String phone;

  Client({this.id, this.name, this.address, this.phone});

  //Para insertar los datos en la bd, necesitamos convertirlo en un Map
  Map<String, dynamic> toMap() =>
      {"id": id, "name": name, "address": address, "phone": phone};

  //Para recibir los datos necesitamos pasarlo de Map a JSON
  factory Client.fromMap(Map<String, dynamic> json) => new Client(
    id: json["id"],
    name: json["name"],
    address: json["address"],
    phone: json["phone"]
  );
}
