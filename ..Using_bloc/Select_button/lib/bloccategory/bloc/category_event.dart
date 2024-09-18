part of 'category_bloc.dart';

@immutable
sealed class CategoryEvent {}

final class CategoryItemEvent extends CategoryEvent {
  CategoryModel categoryEvent;
  CategoryItemEvent({required this.categoryEvent});
}

final class LoadCategoryList extends CategoryEvent {}
