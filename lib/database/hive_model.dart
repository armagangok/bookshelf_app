import 'package:hive/hive.dart';
part 'hive_model.g.dart';

@HiveType(typeId: 1)
class BookModel {
  @HiveField(0)
  final String? bookName;

  @HiveField(1)
  final String? authorName;

  @HiveField(2)
  final int? edition;

  @HiveField(3)
  final int? printingDate;

  BookModel({
    this.bookName,
    this.authorName,
    this.edition,
    this.printingDate,
  });
}
