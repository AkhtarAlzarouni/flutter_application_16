part of 'Mian_cubit.dart';

@immutable
sealed class MianState {}

final class MianInitial extends MianState {}
class GetPostsLoadingState extends MianState {}

class GetPostsSuccessState extends MianState {}

class GetPostsErrorState extends MianState {}
