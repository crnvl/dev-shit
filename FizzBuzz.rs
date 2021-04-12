fn main() {
    for i in 1.. {
        let mut output = String::new();

        if i % 3 == 0 {
            output.push_str("Fizz");
        } 

        if i % 5 == 0 {
            output.push_str("Buzz");
        }

        else if output == "" {
            output = format!("{}", i);
        }
        
        println!("{}", output);
    }
}