using System;

namespace CSharp
{
    public abstract class User
    {
        private string name;
        private string surname;
        private string email;
        private string password;

        public User(string name, string surname, string email, string password)
        {
            this.name = name;
            this.surname = surname;
            this.email = email;
            this.password = password;
        }

        public abstract void LogIn();

        public abstract void LogOut();
    }
}