@echo off
SET /A counter = 0
if not exist "FizzBuzz" mkdir FizzBuzz
cd FizzBuzz
echo FizzBuzz> FizzBuzz.txt
echo Fizz> Fizz.txt
echo Buzz> Buzz.txt

:FizzBuzz
@timeout /T 1 /nobreak > nul
SET /A counter = %counter% + 1
SET /A fizzbuzz = %counter% %% 15
SET /A fizz = %counter% %% 3
SET /A buzz = %counter% %% 5
IF /i %counter% gtr 50 goto break
IF /i %fizzbuzz% == 0 goto fifteen
IF /i %fizz% == 0 goto three
IF /i %buzz% == 0 goto five
@echo %counter% > "%counter%.txt"
type .\%counter%.txt
goto FizzBuzz

:fifteen
type FizzBuzz.txt
goto FizzBuzz

:three
type Fizz.txt
goto FizzBuzz

:five
type Buzz.txt
goto FizzBuzz

:break
cd .. 
