import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitcoachaz/logger.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:fitcoachaz/domain/repositories/search_repository.dart';

import '../../../data/models/coach.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc({
    required final SearchRepository repository,
  })  : _repository = repository,
        super(const SearchState.initial()) {
    on<SearchEvent>(
      (event, emit) => event.map(
        search: (event) => _onSearch(event, emit),
      ),
    );
  }

  final SearchRepository _repository;

  Future<void> _onSearch(
    _SearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    if (!RegExp(r'\S').hasMatch(event.query)) return;
    List<String> keywords = event.query.toLowerCase().trim().split(' ');

    emit(const SearchState.loading());
    final coaches2 = await _repository.search(keywords);
    emit(SearchState.loaded(coaches2));
  }

  String capitalizeFirstLetterOfEachWord(String query) {
    List<String> words = query.split(' ');
    for (int i = 0; i < words.length; i++) {
      words[i] =
          words[i][0].toUpperCase() + words[i].substring(1).toLowerCase();
    }
    return words.join(' ').trim();
  }
}
