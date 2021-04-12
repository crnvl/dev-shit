#include <iostream>
#include <string>
using namespace std;

int main() {
  for(int i = 1;true; i++) {
  		string output = "";
        if(i % 3 == 0) {
        	output += "Fizz";
        } 
        if(i % 5 == 0) {
        	output += "Buzz";
        }
        if(output == "") 
        {
			output = std::to_string(i);
        }
        cout << output << '\n';
  }
  return 0;
}