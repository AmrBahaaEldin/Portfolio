part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}
final class HomeTheme extends HomeState{}
final class HomeOpenLink extends HomeState{}
final class ToggleScreen extends HomeState{}
