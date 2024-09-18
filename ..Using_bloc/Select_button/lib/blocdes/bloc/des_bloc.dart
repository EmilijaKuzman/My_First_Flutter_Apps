import 'package:bloc/bloc.dart';
import 'package:deveta/blocsong/bloc/song_bloc.dart';
import 'package:meta/meta.dart';

part 'des_event.dart';
part 'des_state.dart';

class DesBloc extends Bloc<DesEvent, DesState> {
  DesBloc() : super(DesState()) {
    on<LoadDesc>((event, emit) async {
      // TODO: implement event handler
      emit(DesState(desc: event.name));
    });
  }
}
