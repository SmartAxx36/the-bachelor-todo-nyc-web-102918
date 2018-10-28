require 'pry'
def get_first_name_of_season_winner(data, season)
  data[season].each do |people_hash|
     if people_hash["status"] = "Winner"
          full_name = people_hash["name"]
          return full_name.to_s.split(' ').first
      end
    end
  # code here
end

def get_contestant_name(data, occupation)
  data.each do |season, hash|
    hash.each do |people|
      people.each do |key,value|
        if value == occupation
          return people["name"]
        end
      end
    end
  end# code here
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestants|
    contestants.each do |hash|
      hash.each do |key,value|
        if value == hometown
          counter += 1
        end
      end
    end
  end
counter
# code here
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |hash|
      hash.each do |key,value|
        if value == hometown
          return hash["occupation"]
        end
      end
    end
  end# code here
end

def get_average_age_for_season(data, season)
  age = 0
count = 0
  data[season].each do |hash|
    hash.each do |key,value|
      if key == "age"
        count += 1
        age += value.to_f
      end
    end
  end
   average_age = (age/count).round
return average_age# code here
end
