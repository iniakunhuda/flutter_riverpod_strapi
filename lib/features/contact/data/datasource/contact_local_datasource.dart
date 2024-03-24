import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod_strapi/core/database/database.dart';
import 'package:flutter_riverpod_strapi/core/helper/app_exception.dart';
import 'package:flutter_riverpod_strapi/features/contact/data/database/contact_db.dart';
import 'package:flutter_riverpod_strapi/features/contact/data/datasource/contact_datasource.dart';
import 'package:flutter_riverpod_strapi/features/contact/data/model/contact_model.dart';
import 'package:isar/isar.dart';

class ContactLocalDatasource extends ContactDatasource {
  @override
  Future<Either<AppException, ContactModel>> createOne(
      {required ContactModel request}) async {
    try {
      final newContact = ContactDB()
        ..firstName = request.first_name
        ..lastName = request.last_name
        ..email = request.email
        ..avatar = request.avatar;

      await isarDB.writeTxn(() async {
        await isarDB.contacts.put(newContact);
      });

      return Right(
        ContactModel(
          id: 0,
          first_name: request.first_name,
          last_name: request.last_name,
          email: request.email,
          avatar: request.avatar,
        ),
      );
    } on DioError catch (ex) {
      return Left(AppException.errorWithMessage(ex.response?.data));
    }
  }

  @override
  Future<Either<AppException, ContactModel>> deleteOne(
      {required String contactId}) async {
    try {
      var contact = await getOne(contactId: contactId);
      var result;
      await isarDB.writeTxn(() async {
        result = await isarDB.contacts.delete(int.parse(contactId));
      });
      return contact.fold(
        (appException) => Left(appException),
        (contactModel) => Right(contactModel),
      );
    } on DioError catch (ex) {
      return Left(AppException.errorWithMessage(ex.response?.data));
    }
  }

  @override
  Future<Either<AppException, List<ContactModel>>> getAll() async {
    try {
      final response = await isarDB.contacts.where().findAll();
      final contacts = response
          .map((c) => ContactModel(
                id: c.id,
                first_name: c.firstName!,
                last_name: c.lastName!,
                email: c.email!,
                avatar: c.avatar ?? '',
              ))
          .toList();

      return Right(contacts);
    } on DioError catch (ex) {
      return Left(AppException.errorWithMessage(ex.response?.data));
    }
  }

  @override
  Future<Either<AppException, ContactModel>> getOne(
      {required String contactId}) async {
    try {
      final contact = await isarDB.contacts.get(int.parse(contactId));
      return Right(
        ContactModel(
          id: contact?.id ?? 0,
          first_name: contact?.firstName ?? '',
          last_name: contact?.lastName ?? '',
          email: contact?.email ?? '',
          avatar: contact?.avatar ?? '',
        ),
      );
    } on DioError catch (ex) {
      return Left(AppException.errorWithMessage(ex.response?.data));
    }
  }

  @override
  Future<Either<AppException, ContactModel>> updateOne(
      {required String contactId, required ContactModel request}) async {
    try {
      final user = await isarDB.contacts.get(int.parse(contactId));

      user!.firstName = request.first_name;
      user.lastName = request.last_name;
      user.email = request.email;
      user.avatar = request.avatar;

      await isarDB.writeTxn(() async {
        await isarDB.contacts.put(user);
      });

      return Right(
        ContactModel(
          id: user.id,
          first_name: user.firstName ?? '',
          last_name: user.lastName ?? '',
          email: user.email ?? '',
          avatar: user.avatar ?? '',
        ),
      );
    } on DioError catch (ex) {
      return Left(AppException.errorWithMessage(ex.response?.data));
    }
  }
}
