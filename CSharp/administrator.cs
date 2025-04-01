using System;

namespace CSharp
{
    public class Administrator : User
    {
        private string adminId;
        public Administrator(string name, string surname, string email, string password, string adminId) : base(name, surname, email, password) 
        {
            this.adminId = adminId;
        }

        public override void LogIn(){

        }   

        public override void LogOut(){
            
        }     
    }
}