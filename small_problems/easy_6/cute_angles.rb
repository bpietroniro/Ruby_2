=begin

Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String that represents that angle in degrees, minutes and seconds. You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

Note: your results may differ slightly depending on how you round values, but should be within a second or two of the results shown.

You should use two digit numbers with leading zeros when formatting the minutes and seconds, e.g., 321°03'07".

You may use this constant to represent the degree symbol:
DEGREE = "\xC2\xB0"

EXAMPLES
dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

IDEAS
So, we need to find a way to convert a decimal remainder to something over 3600. Then we divide that something by 60, and the quotient becomes minutes while the remainder becomes seconds.

43/60 + 48/3600 = 0.73
(43 * 60 + 48)/3600 = 0.73
73/100 = 2628/3600
2628/60 = 43R48

ALGORITHM
- extract the integer portion of the input; this is the number of degrees
- extract the decimal remainder, multiply by 60
  - extract the integer portion; this is the number of minutes
  - extract the decimal remainder, multiply by 60
    - extract the integer portion; this is the number of seconds


=end


p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
