import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_model.freezed.dart';

@freezed
class ContactModel with _$ContactModel {
  ContactModel._();
  factory ContactModel({
    required int id,
    required String first_name,
    required String last_name,
    required String email,
    required String avatar,
  }) = _ContactModel;


  Map<String, dynamic> toRequest() {
    return {
      'first_name': first_name,
      'last_name': last_name,
      'email': email,
      'avatar': avatar,
    };
  }
}
