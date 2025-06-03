import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.searchRepo) : super(SearchBooksInitial());

  final SearchRepo searchRepo;

  Future<void> fetchQSearchBooks({required String searchQuery}) async {
    emit(SearchBooksLoading());
    var result = await searchRepo.fetchSearchBooks(searchQuery: searchQuery);
    result.fold(
      (failure) {
        emit(SearchBooksFailure(failure.errMsg));
      },
      (books) {
        emit(SearchBooksSuccess(books));
      },
    );
  }
}
