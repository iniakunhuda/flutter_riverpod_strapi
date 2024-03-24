import 'package:flutter_riverpod_strapi/features/contact/data/model/contact_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_state.freezed.dart';

@freezed
class ContactState with _$ContactState {
  ContactState._();
  factory ContactState({
    @Default([]) List<ContactModel> contacts,
    ContactModel? detailContact,
    @Default(true) bool isLoading,
    @Default(false) bool isError,
    @Default("") String errorMessage,
  }) = _ContactState;
}
