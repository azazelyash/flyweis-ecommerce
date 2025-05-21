import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mr_pritam_client_app/models/banner_data_model.dart';
import 'package:mr_pritam_client_app/models/job_data_model.dart';
import 'package:mr_pritam_client_app/models/login_response_model.dart';
import 'package:mr_pritam_client_app/models/notification_model.dart';
import 'package:mr_pritam_client_app/repositories/repository.dart';

class AuthController extends StateNotifier<void> {
  final Repository repository;

  AuthController({required this.repository}) : super(null);

  Future<LoginResponseModel> login({required String email}) async {
    try {
      final data = await repository.loginStaff(email: email);
      repository.httpService.localStorageManager.saveAccessToken(token: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY3Zjc5MWVkODQzOTcyMDUwOTkxNDg3MCIsImlhdCI6MTc0NDI5MjA4MSwiZXhwIjoxNzc1ODI4MDgxfQ.Ag7MvMfvN3xnVcnz7KWwSDL2U_ANoljrcBQeHmpvTbI");
      return data;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<JobDataModel>> getNewJobs() async {
    try {
      final data = await repository.getNewJobs();
      return data;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<BannerDataModel>> getAllBanners() async {
    try {
      final data = await repository.getAllBanners();
      return data;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<NotificationModel>> getAllNotifications() async {
    try {
      final data = await repository.getAllNotifications();
      return data;
    } catch (e) {
      rethrow;
    }
  }
}

final authController = StateNotifierProvider<AuthController, void>(
  (ref) => AuthController(
    repository: ref.read(repositoryProvider),
  ),
);
