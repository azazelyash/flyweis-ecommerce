import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mr_pritam_client_app/common/api_constants.dart';
import 'package:mr_pritam_client_app/common/http_services.dart';
import 'package:mr_pritam_client_app/models/banner_data_model.dart';
import 'package:mr_pritam_client_app/models/job_data_model.dart';
import 'package:mr_pritam_client_app/models/login_response_model.dart';
import 'package:mr_pritam_client_app/models/notification_model.dart';

import '../common/local_storage_manager.dart';

final secureStorageProvider = Provider<FlutterSecureStorage>((ref) => const FlutterSecureStorage());

final localStorageProvider = Provider.family<LocalStorageManager, FlutterSecureStorage>((ref, secureStorage) {
  return LocalStorageManager(secureStorage: secureStorage);
});

final httpServiceProvider = Provider<HttpService>(
  (ref) => HttpService(
    localStorageManager: ref.read(
      localStorageProvider(
        ref.watch(secureStorageProvider),
      ),
    ),
  ),
);

final repositoryProvider = Provider<Repository>(
  (ref) => Repository(
    httpService: ref.read(httpServiceProvider),
  ),
);

class Repository {
  final HttpService httpService;

  Repository({required this.httpService});

  Future<LoginResponseModel> loginStaff({required String email}) async {
    try {
      final res = await httpService.post(
        url: ApiConstants.staffLogin,
        passToken: false,
        body: {
          "email": email,
        },
      );

      return LoginResponseModel.fromJson(res["data"]);
    } catch (e) {
      rethrow;
    }
  }

  Future<List<JobDataModel>> getNewJobs() async {
    try {
      final res = await httpService.get(url: ApiConstants.getNewJobsList);
      return List<JobDataModel>.generate(
        res["data"].length,
        (index) => JobDataModel.fromJson(res["data"][index]),
      ).toList();
    } catch (e) {
      rethrow;
    }
  }

  Future<List<BannerDataModel>> getAllBanners() async {
    try {
      final res = await httpService.get(url: ApiConstants.getAllBanner);
      return List<BannerDataModel>.generate(
        res["data"].length,
        (index) => BannerDataModel.fromJson(res["data"][index]),
      ).toList();
    } catch (e) {
      rethrow;
    }
  }

  Future<List<NotificationModel>> getAllNotifications() async {
    try {
      final res = await httpService.get(url: ApiConstants.allNotification);
      return List<NotificationModel>.generate(
        res["data"].length,
        (index) => NotificationModel.fromJson(res["data"][index]),
      ).toList();
    } catch (e) {
      rethrow;
    }
  }
}
