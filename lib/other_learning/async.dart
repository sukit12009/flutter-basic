// ignore_for_file: avoid_print

void main() async {
  print(await loginUser());
  print("next");
}

Future<String> loginUser() async {
  var user = await getUserFromDatabase();
  return user;
}

Future<String> getUserFromDatabase() {
  return Future.delayed(const Duration(seconds: 10), () => "NoView");
}
