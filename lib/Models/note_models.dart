// ignore: camel_case_types
import 'package:hive/hive.dart';
part 'note_models.g.dart';

@HiveType(typeId: 0)
class note_model extends HiveObject{

  @HiveField(0)
  String title;

  @HiveField(1)
  String subtitle;

  @HiveField(2)
  int color;
  
  @HiveField(3)
  String date;

  note_model({
    required this.title
    ,required this.subtitle,
    required this.color
    ,required this.date
    });
}