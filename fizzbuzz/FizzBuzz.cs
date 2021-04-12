namespace FizzBuzz {
    class FizzBuzz {
    
    static void Main(string[] args) {
        for(int i = 1;true;i++) {
            string output = "";
            if(i % 3 == 0) {
                output += "Fizz";
            }
            if(i % 5 == 0) {
                 output += "Buzz";
            }

            Console.WriteLine((output != "") ? output : Convert.ToString(i));
        }   
    }
}
}

