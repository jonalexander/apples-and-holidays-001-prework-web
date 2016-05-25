require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, supplies|
    holiday_hash[:winter][holiday] << supply
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end


def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    puts "#{season.to_s.capitalize}:"

    holidays.each do |holiday, supplies|   #x => :christmas  y => ["Lights", "Wreath"]
      holiday_array = []
      holiday.to_s.split("_").each { |word| holiday_array << word.capitalize! }
      puts "  #{holiday_array.join(" ")}: #{supplies.join(", ")}"
    end
  end
end



def all_holidays_with_bbq(holiday_hash)
  holiday_array = []

  holiday_hash.each do |season, hash|
    hash.collect do |holiday, supplies|
      holiday_array << holiday if supplies.include?("BBQ")
    end
  end

  holiday_array
end

