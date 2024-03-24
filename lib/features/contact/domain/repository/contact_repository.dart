import 'package:flutter_riverpod_strapi/core/helper/app_exception.dart';
import 'package:flutter_riverpod_strapi/features/contact/data/model/contact_model.dart';
import 'package:dartz/dartz.dart';

abstract class ContactRepository {
  Future<Either<AppException, List<ContactModel>>> getAll();
  Future<Either<AppException, ContactModel>> getOne({
    required String contactId,
  });
  Future<Either<AppException, ContactModel>> createOne({
    required ContactModel request,
  });
  Future<Either<AppException, ContactModel>> updateOne({
    required String contactId,
    required ContactModel request,
  });
  Future<Either<AppException, ContactModel>> deleteOne({
    required String contactId,
  });
}
