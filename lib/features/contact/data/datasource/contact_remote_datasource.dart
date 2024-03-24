import 'package:flutter_riverpod_strapi/core/api/endpoints.dart';
import 'package:flutter_riverpod_strapi/core/helper/app_exception.dart';
import 'package:flutter_riverpod_strapi/core/http/api_provider.dart';
import 'package:flutter_riverpod_strapi/features/contact/data/datasource/contact_datasource.dart';
import 'package:flutter_riverpod_strapi/features/contact/data/dto/contact_dto.dart';
import 'package:flutter_riverpod_strapi/features/contact/data/model/contact_model.dart';
import 'package:dartz/dartz.dart';

class ContactRemoteDatasource extends ContactDatasource {
  ContactRemoteDatasource(this._api);
  final ApiProvider _api;

  @override
  Future<Either<AppException, ContactModel>> createOne({
    required ContactModel request,
  }) async {
    final response = await _api.post(
      Endpoints.userURL,
      {
        'data': request.toRequest(),
      },
    );

    return response.when(
      success: (success) async {
        final responseDto = ContactDetailDTO.fromJson(
          success as Map<String, dynamic>,
        );

        final ContactModel contact = responseDto.data.toModel();
        return Right(contact);
      },
      error: (error) {
        return Left(error);
      },
    );
  }

  @override
  Future<Either<AppException, ContactModel>> deleteOne(
      {required String contactId}) async {
    late ContactModel contact;
    final findContact = await getOne(contactId: contactId);
    findContact.fold((l) {}, (r) {
      contact = r;
    });

    final response = await _api.delete(
      "${Endpoints.userURL}/$contactId",
    );

    return response.when(
      success: (success) async {
        return Right(contact);
      },
      error: (error) {
        return Left(error);
      },
    );
  }

  @override
  Future<Either<AppException, List<ContactModel>>> getAll() async {
    final response = await _api.get(
      Endpoints.userURL,
    );

    return response.when(
      success: (success) async {
        final responseDto = ContactDTO.fromJson(
          success as Map<String, dynamic>,
        );

        final List<ContactModel> contacts =
            responseDto.data.map((e) => e.toModel()).toList();

        return Right(contacts);
      },
      error: (error) {
        return Left(error);
      },
    );
  }

  @override
  Future<Either<AppException, ContactModel>> getOne({
    required String contactId,
  }) async {
    final response = await _api.get(
      "${Endpoints.userURL}/$contactId",
    );

    return response.when(
      success: (success) async {
        final responseDto = ContactDetailDTO.fromJson(
          success as Map<String, dynamic>,
        );

        final ContactModel contact = responseDto.data.toModel();
        return Right(contact);
      },
      error: (error) {
        return Left(error);
      },
    );
  }

  @override
  Future<Either<AppException, ContactModel>> updateOne(
      {required String contactId, required ContactModel request}) async {
    final response = await _api.put(
      "${Endpoints.userURL}/$contactId",
      {
        'data': request.toRequest(),
      },
    );

    return response.when(
      success: (success) async {
        final responseDto = ContactDetailDTO.fromJson(
          success as Map<String, dynamic>,
        );

        final ContactModel contact = responseDto.data.toModel();
        return Right(contact);
      },
      error: (error) {
        return Left(error);
      },
    );
  }
}
