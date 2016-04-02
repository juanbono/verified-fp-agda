module day where

{-
  4. Define a datatype Day.
  5. Define a function nextDay of type Day → Day, which given a day of the week will return the next day of the week.
-}

data Day : Set where
  Sunday : Day
  Monday : Day
  Tuesday : Day
  Wednesday : Day
  Thursday : Day
  Friday : Day
  Saturday : Day

nextDay : Day → Day
nextDay Sunday = Monday
nextDay Monday = Tuesday
nextDay Tuesday = Wednesday
nextDay Wednesday = Thursday
nextDay Thursday = Friday
nextDay Friday = Saturday
nextDay Saturday = Sunday
