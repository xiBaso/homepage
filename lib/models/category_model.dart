import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({
    required this.name,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [name, imageUrl];

  static List<Category> categories = [
    Category(
        name: "Graphics Design",
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ_6t1p6jg9_zGhdWMw6bmad-3UW3m3ums4w&usqp=CAU'),
    Category(
        name: "Logo",
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2I75rxUUGe78wcrBLRtUg5NAoqSCJf88-Tg&usqp=CAU'),
    Category(
        name: "Poster",
        imageUrl:
            'https://i.pinimg.com/originals/63/e5/3a/63e53a677ea6ff964722d9bc76bc1c7e.jpg'),
    Category(
        name: "UI/UX",
        imageUrl:
            'https://www.acquisition-international.com/wp-content/uploads/2021/09/UI-UX-Design.jpg'),
  ];
}
