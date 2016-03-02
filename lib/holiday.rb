require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)

  holiday_hash[:winter].each do |holiday, supplies|
    holiday_hash[:winter][holiday] << supply
  end

    # holiday_hash is identical to the one above 
    # add the second argument, which is a supply, to BOTH the 
    # Christmas AND the New Year's arrays

    ## holiday is a place holder for each KEY in :winter
    ## ie: :christmas & :new_years
    ## for each KEY, we add (<<) a #supply which was passed
    ## as a parameter in the method
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # (holiday_hash, :winter, :festivus, [pole, box, hammer])
  holiday_hash[season][holiday_name] = supply_array
  ## use the = operator and not the << shovel to add new array to new holiday within existing season
  return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  return holiday_hash[:winter].values.flatten
  ## .flatten breaks down nested arrays and merges into one flat array
end







def all_supplies_in_holidays(holiday_hash)

## some variables
stringHoliday = String.new
arrayHoliday = Array.new
finalHolidayArray = Array.new
finalHolidayString = String.new
fixedWord = String.new
properSupplies = String.new


  holiday_hash.each do |season, data| ## loop 1

    ## puts "   #{holiday}: #{supplies} X each holiday
    puts "#{season.to_s.capitalize}:"
    ## Winter:

      ## within each season i want to print each holiday and its supplies
      data.each do |holiday, supplies|

        stringHoliday = holiday.to_s
        ## converts our holiday to a string (capitalize later)
        ## :new_years.to_s => "new_years"

        arrayHoliday = stringHoliday.split("_")
        ## ==>["new", "years"]

          arrayHoliday.each do |word|
            fixedWord = word.capitalize!
            ## this will capitalize each word in the array
            ## need to push each word to a new string
            finalHolidayArray << fixedWord
            ## finalHolidayArray is an empty array
            ## we add each fixed word to it
            ## => ["New", "Years"]

            ## need to convert to string with a space

            finalHolidayString = finalHolidayArray.join(" ")

          end   ## ends iteration loop on arrayHoliday
        
        properSupplies = supplies.join(", ")
        ## don't need to capitalize supplies
        ## need to split array and join as a string
        ## ["Lights", "Wreath"]
        ## => "Lights, Wreath"


        puts "  #{finalHolidayString}: #{properSupplies}"
        ## Christmas: Lights, Wreath
        ## New Years: Party Hats
        ## remember indentation

        finalHolidayString = ""
        finalHolidayArray = []
        ## this little line is crucial to reseting finalHoloiday
        ## so it doesn't continuously carry through the iterations
        ## of the higher level .each loop. we also want to reset
        ## our finalHolidayArray as it will keep piling on each
        ## holiday name through out the iterations
      end

  end ## loop 1

end



def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

  ## soft code ----
  ## iterate through holiday
  ## step down to supplies
  ## check supplies array for "BBQ"
  ## if true - push holiday symbol to a new array
  ## return array
  ## #=> [:fourth_of_july, :memorial_day]

  ## variables
  arrayOfBBQ = Array.new

  holiday_hash.each do |season, data|
  ## iterate over each season and its holidays

    data.each do |holiday, supplies| 
      ## iterate over each holiday and its array/values
      ## #supplies should equal the supply array stored witheach holiday key
      
      if supplies.include?("BBQ") == true
          arrayOfBBQ << holiday
          #if we find BBQ in the supply array, we'll add that holiday to our array to return at the end
      end

    end   

  end #end initial holiday_has.each loop

  return arrayOfBBQ

end

