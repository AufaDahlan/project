class Chat{

  String? username;
  String? password;
  String? groupName;
  Map<String, dynamic> msg = {};
  
  bool statLogin=false;
  bool statLogout=false;
  // bool sendMsgStat=false;
  bool receiveMsgStat=false;
  
  login(String uname, String passwd){
    
    username = uname;
    password = passwd;

    if( username=="admin" && password=="admin"){
      statLogin = true;
    }

    return statLogin;
  }
  
  logout(){
    if(statLogin){
      username = "";
      password = "";
      statLogout = true;
    }
    else{
      return "BELUM LOGIN";
    }

    return statLogout;
  }
  
  sendMessage(String m){
    
    if (!statLogin){ return "BELUM LOGIN"; }
      
    if(m != ""){
      msg = {'message':m, 'sendStatus':true};
      return msg;
    }
    else if(m == ""){
      msg = {'message':m, 'sendStatus':false};
      return msg;
    }
      
    
  }
  
  receivedMessage(){


    if (!statLogin){ return "BELUM LOGIN"; }

    // print(msg['sendStatus']);

    if( msg['sendStatus'] ) {
      return msg['message']!;
    }

  }
  
  
}

class User extends Chat{
  
  String userName = "";
  String userPasswd = "";
  
  User({required String userN, required String userP}){
    userName = userN;
    userPasswd = userP;
  }



}

void main(){

User u = User(userN: "admin", userP: "admin");

//============= LOGIN ======================
bool x = u.login(u.userName,  u.userPasswd);

print("status login ==>");
print(x);
print("===========================");


//============= SEND MESSAGE ======================
Map sendMsg = u.sendMessage("hello world !");
print(sendMsg);
print("===========================");


//============= RECEIVED MESSAGE ======================
String recvMsg = u.receivedMessage();
print(recvMsg);
print("===========================");


//============= LOGOUT ======================
var lgOut = u.logout();
print("status logout ==>");
print(lgOut);
print("===========================");


}
