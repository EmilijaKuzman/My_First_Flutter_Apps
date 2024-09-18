import 'package:bloc/bloc.dart';
import 'package:deveta/blocsong/bloc/song_bloc.dart';
import 'package:deveta/models/category_model.dart';
import 'package:meta/meta.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  List<CategoryModel> listCategory = [
    CategoryModel(category: 1, type: "Sleep"),
    CategoryModel(category: 2, type: "Meditate"),
    CategoryModel(category: 3, type: "Play"),
    CategoryModel(category: 4, type: "Run"),
    CategoryModel(category: 5, type: "Dance"),
  ];
  CategoryBloc() : super(CategoryState(status: Status.initial)) {
    on<CategoryItemEvent>((event, emit) {
      // TODO: implement event handler

      emit(state.copyWith(selectedCategory: event.categoryEvent));
    });
    on<LoadCategoryList>((event, emit) async {
      // TODO: implement event handler
      try {
       
        emit(state.copyWith(status: Status.load));
        await Future.delayed(Duration(seconds: 1));
        emit(state.copyWith(
            listOfCat: listCategory.toList(), status: Status.loaded));
      } catch (e) {
        emit(state.copyWith(status: Status.error, error: e.toString()));
      }
    });
  }
}
