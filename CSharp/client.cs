using System;

namespace CSharp
{
    public class Client : User
    {
        private int tasks;
        public Client(string name, string surname, string email, string password, int tasks) : base(name, surname, email, password) 
        {
            this.tasks = tasks;
        }

        public override void LogIn(){

        }

        public override void LogOut(){

        }

        public void Register(){
            
        }
    }
}