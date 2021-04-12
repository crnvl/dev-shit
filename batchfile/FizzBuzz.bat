@echo off
SET /A counter = 0

:1
@timeout /T 1 /nobreak > nul
SET /A counter = %counter% + 1
SET /A fizzbuzz = %counter% %% 15
SET /A fizz = %counter% %% 3
SET /A buzz = %counter% %% 5

IF /i %fizzbuzz% == 0 goto fifteen
IF /i %fizz% == 0 goto three
IF /i %buzz% == 0 goto five
echo %counter%
goto 1

:fifteen
echo FizzBuzz
goto 1

:three
echo Fizz
goto 1

:five
echo Buzz
goto 1