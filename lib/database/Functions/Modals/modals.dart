import 'package:hive_flutter/adapters.dart';
part 'modals.g.dart';

@HiveType(typeId: 1)
class StdModal extends HiveObject {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String age;
  @HiveField(2)
  final String email;
  @HiveField(3)
  final String number;
  @HiveField(4)
  final String photo;

  StdModal({
    required this.name,
    required this.age,
    required this.email,
    required this.number,
    required this.photo,
  });
}
