import Data.Time.Calendar
import Data.Time.Calendar.WeekDate

isFriday :: Day -> Bool
isFriday date = weekDay == 5
    where (_, _, weekDay) = toWeekDate date

friday13ths :: [Day]
friday13ths =
    [ date | year  <- [2012..2017]
           , month <- [1..12]
           , let date = fromGregorian year month 13
           , isFriday date ]

main :: IO ()
main = mapM_ print friday13ths
