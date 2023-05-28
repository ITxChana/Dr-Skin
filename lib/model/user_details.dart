class UserDetails{
  String? displayName;
  String? email;
  String? photoURL;


  //constructor
 UserDetails({this.displayName, this.email, this.photoURL});

 //map
 UserDetails.fromJason(Map<String, dynamic> json)
 {
   displayName = json["displayName"];
   photoURL = json["photoURL"];
   email = json["email"];
 }
 Map<String, dynamic> toJson()
 {
   //object data
   final Map<String, dynamic> data = new Map<String, dynamic>();
   data['displayName'] = this.displayName;
   data['email'] = this.email;
   data['photoURL'] = this.photoURL;

   return data;

 }
}