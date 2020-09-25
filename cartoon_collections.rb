def square_array(array)
  new_array = array.map {|num| num ** 2}
end

def summon_captain_planet(planeteer_calls)
  new_array = planeteer_calls.map {|string| string.capitalize! + "!"}
end

def long_planeteer_calls(planeteer_calls)
  planeteer_calls.any? {|string| string.length > 4}
end

def find_valid_calls(planeteer_calls)
  valid_calls = ["Earth!", "Wind!", "Fire!", "Water!", "Heart!"]
  # Use an Enumerable to check if any elements in the passed in array match the valid calls listed above 
  # Return the first valid call found, or return nil if no valid calls are found
  planeteer_calls.each do |str|
    if valid_calls.include?(str)
      return str
    end
  end
  return nil
end
