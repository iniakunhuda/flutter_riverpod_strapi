import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_strapi/core/helper/app_exception.dart';
import 'package:flutter_riverpod_strapi/core/helper/network_detector.dart';
import 'package:flutter_riverpod_strapi/core/http/api_provider.dart';
import 'package:flutter_riverpod_strapi/features/contact/data/datasource/contact_datasource.dart';
import 'package:flutter_riverpod_strapi/features/contact/data/datasource/contact_local_datasource.dart';
import 'package:flutter_riverpod_strapi/features/contact/data/datasource/contact_remote_datasource.dart';
import 'package:flutter_riverpod_strapi/features/contact/data/model/contact_model.dart';
import 'package:flutter_riverpod_strapi/features/contact/domain/repository/contact_repository.dart';

final contactDatasourceProvider = Provider<ContactDatasource>(
  (ref) {
    var connectivity = ref.watch(connectivityStatusProviders);
    debugPrint(connectivity.toString());
    if (connectivity == ConnectivityStatus.isDisconnected) {
      return ContactLocalDatasource();
    } else {
      final api = ref.read(apiProvider(dotenv.env['BASE_URL'] ?? ''));
      return ContactRemoteDatasource(api);
    }
  },
);

final contactRepositoryProvider = Provider<ContactRepository>((ref) {
  final datasource = ref.watch(contactDatasourceProvider);
  final repository = ContactRepositoryImpl(datasource);
  return repository;
});

class ContactRepositoryImpl extends ContactRepository {
  ContactRepositoryImpl(this.datasource);
  final ContactDatasource datasource;

  @override
  Future<Either<AppException, ContactModel>> createOne(
      {required ContactModel request}) {
    return datasource.createOne(request: request);
  }

  @override
  Future<Either<AppException, ContactModel>> deleteOne(
      {required String contactId}) {
    return datasource.deleteOne(contactId: contactId);
  }

  @override
  Future<Either<AppException, List<ContactModel>>> getAll() {
    return datasource.getAll();
  }

  @override
  Future<Either<AppException, ContactModel>> getOne(
      {required String contactId}) {
    return datasource.getOne(contactId: contactId);
  }

  @override
  Future<Either<AppException, ContactModel>> updateOne(
      {required String contactId, required ContactModel request}) {
    return datasource.updateOne(contactId: contactId, request: request);
  }
}
