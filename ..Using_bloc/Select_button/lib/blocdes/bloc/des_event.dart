part of 'des_bloc.dart';

@immutable
sealed class DesEvent {}

final class LoadDesc extends DesEvent {
  String? name;
  LoadDesc({this.name});
}
