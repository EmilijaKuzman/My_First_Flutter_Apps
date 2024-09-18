// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'category_bloc.dart';

@immutable
class CategoryState {
  CategoryModel? selectedCategory;
  List<CategoryModel> listOfCat = [];
  Status status;
  String? error;
  CategoryState({
    this.selectedCategory,
    this.listOfCat = const [],
    required this.status,
    this.error,
  });

  CategoryState copyWith({
    CategoryModel? selectedCategory,
    List<CategoryModel>? listOfCat,
    Status? status,
    String? error,
  }) {
    return CategoryState(
      selectedCategory: selectedCategory ?? this.selectedCategory,
      listOfCat: listOfCat ?? this.listOfCat,
      status: status ?? this.status,
      error: error ?? this.error,
    );
  }
}
