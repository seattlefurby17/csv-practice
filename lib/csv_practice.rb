require 'csv'
require 'awesome_print'

REQUIRED_OLYMPIAN_FIELDS = %w[ID Name Height Team Year City Sport Event Medal]
MEDAL_TOTALS_FILENAME = 'data/medal_totals.csv'
OLYMPIC_DATA_FILENAME = 'data/athlete_events.csv'

def get_all_olympic_athletes(filename)
  olympic_athletes = CSV.read(filename, headers: true).map(&:to_h)

  olympic_athletes.each do |athlete|
    array_of_field = []

    athlete.select do |field|
     athlete[:field] == REQUIRED_OLYMPIAN_FIELDS
     array_of_field << athlete[:field]
    end
  end


    # ap olympic_athletes
  return olympic_athletes
end

ap get_all_olympic_athletes(OLYMPIC_DATA_FILENAME)

# from_file = { a: 2, b: 3, c: 6 }
# transofrmed = { a: from_file[:a], c: from_file[:c] }

def total_medals_per_team(olympic_data)

end

def get_all_gold_medalists(olympic_data)
end
