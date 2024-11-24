class Student {
  // Defining class variables
  var stdName;
  var stdAge;
  var stdRollNu;

  // Defining class function
  void showStdInfo() {
    print("Student Name is: $stdName");
    print("Student Age is: $stdAge");
    print("Student Roll Number is: $stdRollNu");
  }
}

void main() {
  // Creating an object called std
  var std = new Student();
  std.stdName = "ABC";
  std.stdAge = 24;
  std.stdRollNu = 90001;

  // Accessing class function
  std.showStdInfo();
}
