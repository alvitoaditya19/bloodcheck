part of 'services.dart';
class UserServices {
  static CollectionReference _userCollection =
      FirebaseFirestore.instance.collection('users');

  static Future<void> updateUser(User user) async {
    _userCollection.doc(user.id).set({
      'email': user.email,
      'name': user.name,
      'balance': user.balance,
      'profilePicture': user.profilePicture ?? ""
    });
  }

  static Future<User> getUser(String id) async {
    DocumentSnapshot snapshot = await _userCollection.doc(id).get();

    return User(id, snapshot['email'],
        profilePicture: snapshot['profilePicture'],
        balance: snapshot['balance'],
        name: snapshot['name']);
        // selectedSchool: snapshot['selectedSchool']);
  }
}