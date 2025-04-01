using System;

namespace CSharp
{
    public class RevOverseer : User
    {
        public RevOverseer(string name, string surname, string email, string password) : base(name, surname, email, password) {}

        public override void LogIn(){

        }   

        public override void LogOut(){
            
        }     
    }
}