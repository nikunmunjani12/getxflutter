import 'package:get/get.dart';

class Multilanguge extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en_US': {'name': 'nikunj', 'surname': 'munjani', 'age': '22'},
        'hi_IN': {'name': 'जयदीपभाई', 'surname': 'गाबानि', 'age': '२५'},
        'kn_IN': {'name': 'ವೀರಜ', 'surname': 'ಪಟೇಲ್', 'age': '೨೨'}
      };
}
