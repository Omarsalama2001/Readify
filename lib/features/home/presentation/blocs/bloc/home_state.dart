part of 'home_bloc.dart';

sealed class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

final class HomeInitial extends HomeState {}

final class GetAllBooksSuccessState extends HomeState {
  final List<BookEntity> books;

  const GetAllBooksSuccessState({required this.books});
}

final class GetAllBooksFailiureState extends HomeState {
  final String faliureMessage;

  const GetAllBooksFailiureState({required this.faliureMessage});
}

final class GetAllBooksLoadingState extends HomeState {}

final class GetSearchBooksSuccessState extends HomeState {
  final List<BookEntity> books;

  const GetSearchBooksSuccessState({required this.books});
}