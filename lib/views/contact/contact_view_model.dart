import 'package:stacked/stacked.dart';

class ContactViewModel extends BaseViewModel {
  List subjects = ['General Inquiry', 'General Inquiry', 'General Inquiry', 'General Inquiry'];
  String subject = "";
  ContactViewModel() {
    subject = subjects.first;
    loadItems();
  }

  // Add ViewModel specific code here
  Future<void> loadItems() async {
    setBusy(true);
    //Write your models loading codes here

    //Let other views to render again
    setBusy(false);
    notifyListeners();
  }

  void onPageChange(String value) {}

  void loginTap() {}

  void signUpTap() {}
}
