//Updated here
class CharacterModel {
  late int id;
  late String name;
  late String status;
  late String species;
  late String image;

  CharacterModel(
      {required this.id,
      required this.name,
      required this.status,
      required this.species,
      required this.image});

  CharacterModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    status = json['status'];
    species = json['species'];
    image = json['image'];
  }
}
