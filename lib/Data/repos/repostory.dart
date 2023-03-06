import '../../../../Configuration/api_constants.dart';
import '../models/experience.dart';
import '../models/model.dart';
import '../models/review.dart';
import 'WebService.dart';

class UserRepository {
  final WebService webservice;

  UserRepository(this.webservice);

  //Experiences
  Future<Experience> getExperience(Usermodel user) async {
    final Experiences = await webservice.getExperiences(user.id);
    return Experiences;
  }

  Future<List<Review>> getReviewById(String id) async {
    final reviews = await webservice.getReviewById(id);
    return reviews.map((e) => Review.fromJson(e)).toList();
  }

  Future<List<Usermodel>> getUser() async {
    final Doctors = await webservice.getUser();
    //final List<Usermodel> Doctors = res.map(((e) => Usermodel.fromJson(e))).toList();
    return Doctors.map(((e) => Usermodel.fromJson(e))).toList();
  }

  Future<bool> AddUser(String name, String Speciality) async {
    Map<String, dynamic> data = {
      'doctorName': name,
      'doctorSpeciality': Speciality
    };
    String? response =
        await webservice.PostUser(ApiConstants.baseUrl, ApiConstants.api, data);
    return response != null;
  }

  Future<bool> DeleteUser(Usermodel data) async {
    bool response = await webservice.deleteUser(
        ApiConstants.baseUrl, ApiConstants.api, data.id);
    return response != null;
  }

  Future<bool> updateItem(
      String name, String Speciality, Usermodel user) async {
    Map<String, dynamic> data = {
      'doctorName': name,
      'doctorSpeciality': Speciality
    };
    bool response = await webservice.updateItem(
        ApiConstants.baseUrl, ApiConstants.api, data, user.id);
    return response != null;
  }
}
