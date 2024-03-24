import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_strapi/features/contact/data/state/contact_state.dart';
import 'package:flutter_riverpod_strapi/features/contact/domain/repository/contact_repository.dart';
import 'package:flutter_riverpod_strapi/features/contact/domain/repository/contact_repository_impl.dart';

final contactProvider =
    StateNotifierProvider<ContactNotifier, ContactState>((ref) {
  final repository = ref.read(contactRepositoryProvider);
  return ContactNotifier(repository);
});

class ContactNotifier extends StateNotifier<ContactState> {
  ContactNotifier(this.repository) : super(ContactState());
  final ContactRepository repository;

  Future<void> getAll() async {
    state = state.copyWith(isLoading: true, contacts: []);
    final response = await repository.getAll();
    response.fold(
      (l) => state = state.copyWith(isLoading: false, contacts: []),
      (r) {
        state = state.copyWith(isLoading: false, contacts: r);
      },
    );
  }

  void getOne(String contactId) async {
    state = state.copyWith(isLoading: true, detailContact: null);
    final response = await repository.getOne(contactId: contactId);
    response.fold(
      (l) => state = state.copyWith(isLoading: false, detailContact: null),
      (r) => state = state.copyWith(isLoading: false, detailContact: r),
    );
  }
}
