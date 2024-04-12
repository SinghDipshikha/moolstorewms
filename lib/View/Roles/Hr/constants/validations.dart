abstract class HrModuleValidator {
  // HrModuleValidator._();

  static bool isValidEmail(String email) {
    if (email.isEmpty) {
      return false;
    }
    final RegExp regex =
        RegExp(r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$");
    return regex.hasMatch(email);
  }

  static bool isValidPassword(String password) {
    if (password.isEmpty) {
      return false;
    }
    final RegExp regex = RegExp(r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$");
    return regex.hasMatch(password);
  }

  static bool isValidUsername(String username) {
    if (username.isEmpty) {
      return false;
    }
    final RegExp regex = RegExp(r"^[a-zA-Z0-9_]{3,15}$");
    return regex.hasMatch(username);
  }

  // static bool isValidMobileNumber(String mobileNumber) {
  //   if (mobileNumber.isEmpty) {
  //     return false;
  //   }
  //   final RegExp regex = RegExp(r"^\(\d{3}\) \d{3}-\d{4}$");
  //   return regex.hasMatch(mobileNumber);
  // }

  static bool isValidMobileNumber(String mobileNumber) {
    if (mobileNumber.isEmpty) {
      return false;
    }
    final RegExp regex = RegExp(r"^[0-9]{10}$");
    return regex.hasMatch(mobileNumber);
  }

  static bool isValidPassportNumber(String passportNumber) {
    if (passportNumber.isEmpty) {
      return false;
    }
    final RegExp regex = RegExp(r"^[a-zA-Z0-9]{6,10}$");
    return regex.hasMatch(passportNumber);
  }

  static bool isValidPFNumber(String pfNumber) {
    if (pfNumber.isEmpty) {
      return false;
    }
    final RegExp regex = RegExp(r"^[a-zA-Z]{2}\d{6}$");
    return regex.hasMatch(pfNumber);
  }

  static bool isValidAadharNumber(String aadharNumber) {
    if (aadharNumber.isEmpty) {
      return false;
    }
    final RegExp regex = RegExp(r'^[0-9]{12}$');
    return regex.hasMatch(aadharNumber);
  }

  static bool isValidPAN(String pan) {
    if (pan.isEmpty) {
      return false;
    }
    final RegExp regex = RegExp(r"^[A-Z]{5}[0-9]{4}[A-Z]{1}$");
    return regex.hasMatch(pan);
  }

  static bool isValidAddress(String address) {
    return address.isNotEmpty;
  }

  static bool isValidCity(String city) {
    if (city.isEmpty) {
      return false;
    }
    final RegExp regex = RegExp(r"^[a-zA-Z\s]+$");
    return regex.hasMatch(city);
  }

  static bool isValidState(String state) {
    if (state.isEmpty) {
      return false;
    }
    final RegExp regex = RegExp(r"^[A-Za-z]{2}$");
    return regex.hasMatch(state);
  }

  static bool isValidPincode(String pincode) {
    if (pincode.isEmpty) {
      return false;
    }
    final RegExp regex = RegExp(r"^[0-9]{6}$");
    return regex.hasMatch(pincode);
  }

  static bool isValidESIC(String esicNumber) {
    if (esicNumber.isEmpty) {
      return false;
    }
    final RegExp regex = RegExp(r"^[a-zA-Z0-9]{17}$");
    return regex.hasMatch(esicNumber);
  }

  static bool isValidGateID(String gateID) {
    if (gateID.isEmpty) {
      return false;
    }
    final RegExp regex = RegExp(r"^Gate-\d{3,5}$");
    return regex.hasMatch(gateID);
  }

  static bool isValidBloodGroup(String bloodGroup) {
    if (bloodGroup.isEmpty) {
      return false;
    }
    final RegExp regex = RegExp(r"^(A|B|AB|O)[\+-]$");
    return regex.hasMatch(bloodGroup);
  }

  static bool isValidMonthlySalary(String salary) {
    if (salary.isEmpty) {
      return false;
    }
    final RegExp regex = RegExp(r"^[1-9]\d*(\.\d+)?$");
    return regex.hasMatch(salary);
  }

  // Validate passing year (four-digit number)
  static bool isValidPassingYear(String year) {
    if (year.isEmpty) {
      return false;
    }
    final RegExp regex = RegExp(r"^\d{4}$"); // Four-digit number
    return regex.hasMatch(year);
  }

  static bool isValidPercentageGrade(String grade) {
    if (grade.isEmpty) {
      return false;
    }
    final RegExp regex = RegExp(r"^100(\.0{1,2})?$|^\d{1,2}(\.\d{1,2})?$");
    return regex.hasMatch(grade);
  }

  static bool isValidSchool(String school) {
    if (school.isEmpty) {
      return false;
    }
    final RegExp regex = RegExp(r"^[a-zA-Z\s\.,'-]+$");
    return regex.hasMatch(school);
  }

  static bool isValidEducationBoard(String board) {
    if (board.isEmpty) {
      return false;
    }
    final RegExp regex = RegExp(r"^[a-zA-Z\s\.,'-]+$");
    return regex.hasMatch(board);
  }

  static bool isValidHighestQualification(String qualification) {
    if (qualification.isEmpty) {
      return false;
    }
    final RegExp regex = RegExp(r"^[a-zA-Z\s]+$");
    return regex.hasMatch(qualification);
  }

  static bool isValidSpecialization(String specialization) {
    if (specialization.isEmpty) {
      return false;
    }
    final RegExp regex = RegExp(r"^[a-zA-Z\s\.,'-]+$");
    return regex.hasMatch(specialization);
  }

  static bool isValidCollegeUniversity(String college) {
    if (college.isEmpty) {
      return false;
    }
    final RegExp regex = RegExp(r"^[a-zA-Z\s\.,'-]+$");
    return regex.hasMatch(college);
  }

  static bool isValidAccountNumber(String accountNumber) {
    if (accountNumber.isEmpty) {
      return false;
    }
    final RegExp regex = RegExp(r"^[a-zA-Z0-9]{6,18}$");
    return regex.hasMatch(accountNumber);
  }

  static bool isValidIFSCCode(String ifscCode) {
    if (ifscCode.isEmpty) {
      return false;
    }
    final RegExp regex = RegExp(r"^[A-Z]{4}0[A-Z0-9]{6}$");
    return regex.hasMatch(ifscCode);
  }

  static bool isValidBankName(String bankName) {
    if (bankName.isEmpty) {
      return false;
    }
    final RegExp regex = RegExp(r"^[a-zA-Z\s\.,'-]+$");
    return regex.hasMatch(bankName);
  }

  static bool isValidAccountType(String accountType) {
    if (accountType.isEmpty) {
      return false;
    }
    final RegExp regex = RegExp(r"^[a-zA-Z\s\.,'-]+$");
    return regex.hasMatch(accountType);
  }

  static bool isValidAccountName(String accountName) {
    if (accountName.isEmpty) {
      return false;
    }
    final RegExp regex = RegExp(r"^[a-zA-Z\s\.,'-]+$");
    return regex.hasMatch(accountName);
  }
}
