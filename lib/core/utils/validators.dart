typedef FieldValidator = String? Function(String? value);

class Validators {
  static FieldValidator combine(List<FieldValidator> list) {
    return (value) {
      for (final validator in list) {
        final result = validator(value);
        if (result != null) return result;
      }
      return null;
    };
  }

  static FieldValidator required({String message = 'هذا الحقل مطلوب'}) {
    return (value) {
      if (value == null || value.trim().isEmpty) {
        return message;
      }
      return null;
    };
  }

  static FieldValidator email({String message = 'البريد الإلكتروني غير صالح'}) {
    final emailRegex = RegExp(
      r"^[a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
    );
    return (value) {
      if (value == null || !emailRegex.hasMatch(value.trim())) {
        return message;
      }
      return null;
    };
  }

  static FieldValidator password({
    int minLength = 8,
    String lengthMessage = 'يجب أن تتكون كلمة المرور من 8 أحرف على الأقل',
    String uppercaseMessage =
        'يجب أن تحتوي كلمة المرور على حرف كبير واحد على الأقل',
    String numberMessage = 'يجب أن تحتوي كلمة المرور على رقم واحد على الأقل',
  }) {
    final upperCaseRegex = RegExp(r'[A-Z]');
    final numberRegex = RegExp(r'\d');
    return (value) {
      if (value == null || value.length < minLength) {
        return lengthMessage;
      }
      if (!upperCaseRegex.hasMatch(value)) {
        return uppercaseMessage;
      }
      if (!numberRegex.hasMatch(value)) {
        return numberMessage;
      }
      return null;
    };
  }

  static FieldValidator confirmPassword(
    String original, {
    String message = 'كلمة المرور غير متطابقة',
  }) {
    return (value) {
      if (value == null || value != original) {
        return message;
      }
      return null;
    };
  }
}
