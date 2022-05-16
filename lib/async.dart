void main() async {
  print(await loginUser());
  print("next");
}

Future<String> loginUser() async {
  var user = await getUserFromDatabase();
  return user;
}

Future<String> getUserFromDatabase() {
  return Future.delayed(Duration(seconds: 10), () => "NoView");
}
