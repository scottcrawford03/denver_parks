require 'CSV'

contents = CSV.open "parks.csv", headers: true, header_converters: :symbol

def clean_facilities(facility)
  if facility.nil?
    facility = ""
  else
    facility
  end
end

@facility_arr = []

def facility_by_occurence
  @facility_arr.flatten.inject(Hash.new(0)) { |hash, word| hash[word] += 1; hash }.sort_by { |_, v| v }.reverse
end

def print_facilities
  facility_by_occurence.each { |k, v| puts "#{k} => #{v}" }
end

contents.each do |row|
  facilities = clean_facilities(row[:facilities])
  
  @facility_arr <<  facilities.split(',').map { |e| e.strip }
end 

File.open("sorted_facilities.txt", 'w') do |file|
  file.puts print_facilities 
end
