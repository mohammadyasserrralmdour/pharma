import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:pharma_app/core/helpers/exception.dart';
import 'package:pharma_app/core/helpers/get_exception_from_status_code.dart';
import 'package:pharma_app/core/services/network_info_service.dart';
import 'package:pharma_app/injection_container.dart';

abstract class AuthRemouteDataSource {
  Future<Unit> register(
      String firstname, String lastname, String email, String password);

  Future<Unit> verifyCode(String email, String otp);

  Future<Unit> sendCode(String email);

  Future<Unit> pharmaInfo(
      String name, String phone, String location, String polceies);

  Future<Unit> login(String email, String password);

  Future<Unit> resetPassword(String newPassword);
}

class AuthRemouteDataSourceImp implements AuthRemouteDataSource {
  final NetworkInfoService networkInfoService;
  AuthRemouteDataSourceImp({required this.networkInfoService});

  @override
  Future<Unit> login(String email, String password) async {
   if(await networkInfoService.isConnected){
     try {
      var request = http.MultipartRequest('POST',
          Uri.parse('https://pharmaplus.microtechdev.com/api/v1/login'));
      request.fields.addAll({'email': email, 'password': password});

      http.StreamedResponse response = await request.send();

     
      getExceptionStatusCode(response.statusCode);
      return Future.value(unit);
    } catch (e) {
      InjectionContainer.getIt<Logger>()
          .w("End login in AuthenticationRepoIm with Exceptions is $e ");
      rethrow;
    }
   }else{
    throw OfflineException();
   }
  }

  @override
  Future<Unit> pharmaInfo(
      String name, String phone, String location, String polceies) async {
    // TODO: implement pharmaInfo
    throw UnimplementedError();
  }

  @override
  Future<Unit> resetPassword(String newPassword) async {
    if (await networkInfoService.isConnected) {
      var headers = {
        'Accept': 'application/json',
        'Authorization':
            'Bearer 5|uoBmGBv4Nxk92nxhD6AsMw9FKPX3apvUdH81ZJbz385dca0e'
      };
      var request = http.MultipartRequest(
          'POST',
          Uri.parse(
              'https://pharmaplus.microtechdev.com/api/v1/reset_password'));
      request.fields.addAll({'password': 'mm0981560395'});

      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      getExceptionStatusCode(response.statusCode);
    return  Future.value(unit);
    } else {
      throw OfflineException();
      
    }
  }

  @override
  Future<Unit> sendCode(email) async {

   try{
     InjectionContainer.getIt<Logger>()
        .i("Start sendCode in AuthRemouteDataSource  ");

    var request = http.MultipartRequest('POST',
        Uri.parse('https://pharmaplus.microtechdev.com/api/v1/send_code'));
    request.fields.addAll({'email': email});

    http.StreamedResponse response = await request.send();

    InjectionContainer.getIt<Logger>().i(
        "END sendCode in AuthRemouteDataSource with statuscode=${response.statusCode} ");
    return Future.value(unit);
   }catch(e){
    InjectionContainer.getIt<Logger>().w(
        "END sendCode in AuthRemouteDataSource with Erorr $e ");
     rethrow;
   }
  }

  @override
  Future<Unit> verifyCode(String email, String otp) async {
    InjectionContainer.getIt<Logger>()
        .i("Start Verify in AuthenticationRepoIm");
    if (await networkInfoService.isConnected) {
      try {
        var request = http.MultipartRequest(
            'POST',
            Uri.parse(
                'https://pharmaplus.microtechdev.com/api/v1/verified_email'));
        request.fields
            .addAll({'email': email, 'otp': otp});

        http.StreamedResponse response = await request.send();

        getExceptionStatusCode(response.statusCode);

        InjectionContainer.getIt<Logger>()
            .i("End login in AuthenticationRepoIm");

        return Future.value(unit);
      } catch (e) {
        InjectionContainer.getIt<Logger>()
            .i("End Verify in AuthenticationRepoIm with Exceptions is $e ");
        rethrow;
      }
    } else {
      throw OfflineException;
    }
  }

  @override
  Future<Unit> register(
      String firstname, String lastname, String email, String password) async {
    try {
      var request = http.MultipartRequest('POST',
          Uri.parse('https://pharmaplus.microtechdev.com/api/v1/register'));
      request.fields.addAll({
        'first_name': 'Mohammad',
        'last_name': 'Almdour',
        'email': 'mohammadyasserrr@gmail.com',
        'password': 'm0981560395'
      });

      http.StreamedResponse response = await request.send();

      InjectionContainer.getIt<Logger>().i(
          "END register in AuthRemouteDataSource with statuscode=${response.statusCode} ");
      return Future.value(unit);
    } catch (e, s) {
      InjectionContainer.getIt<Logger>()
          .i("END register in AuthRemouteDataSource with Exception is $e $s");
      rethrow;
    }
  }
}
