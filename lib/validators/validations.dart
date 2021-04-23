import 'package:form_field_validator/form_field_validator.dart';

final emailValidator = MultiValidator([
  RequiredValidator(errorText: 'email is required'),
  // MinLengthValidator(6, errorText: 'password must be at least 6 digits long'),
  PatternValidator(r'(?=.*?[#?!@$%^&*-])',
      errorText: 'email must have at least one special character')
]);
final passwordValidator = MultiValidator([
  RequiredValidator(errorText: 'Password is required'),
  // MinLengthValidator(8, errorText: 'password must be at least 8 digits long'),
  //PatternValidator(r'(?=.*?[#?!@$%^&*-])', errorText: 'passwords must have at least one special character')
]);
