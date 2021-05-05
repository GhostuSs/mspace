class User{
  bool token=false;
  String login="";
  String password="";
  String name="";
  var enrollSchools=[];
  int actualClass=0;
  int enrollClass=0;
  checkAccess(String log,String pass){
    token=false;
    if(this.login==log&&this.password==pass){
      token=true;
    }else{
      token=false;
    }
  }
}