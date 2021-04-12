def main():
    for x in range (101):
        count = ""
        if(x % 3 == 0):
            count += "Fizz"
        if(x % 5 == 0):
            count += "Buzz"
        if not count:
            count = str(x)
        print(count)

if __name__ == '__main__':
    main()