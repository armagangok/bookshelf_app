import 'package:hive/hive.dart';
part 'hive_model.g.dart';

@HiveType(typeId: 1)
class HiveModel {
  @HiveField(0)
  late final String bookName;

  @HiveField(1)
  late final String authorName;

  @HiveField(2)
  late final int edition;

  @HiveField(3)
  late final int printingDate;
}
