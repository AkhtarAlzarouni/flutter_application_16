class UserMoudel{

  String? email;
  String? password;
 



  UserMoudel({this.email,this.password,});
  
  Map<String,dynamic> toMap(){
    return{
     "email":email,
     "password":password
    };
  }

}