# encoding: UTF-8

require 'open-uri'
require 'json'

class Fixnum
  def day
    self * (60 * 60 * 24) # seconds * hours * minutes
  end
end

seeds = []
File.open("currency_seed.rb", "r") {|f| seeds = JSON.parse(f.read)} if File.exists?("currency_seed.rb")
#dt = Time.new(seeds.count > 0 ? seeds.last["date"] : "2014-12-31") + 1.day\
dt = Time.new("2015-01-14") + 1.day
retries = 0
0.upto 1000 do
  begin  
    open("http://www.x-rates.com/historical/?from=USD&amount=1&date=#{dt.strftime("%F")}") do |f|
      retries = 0
      data = {}
      content = f.read  
      content.match(/Alphabetical order(.*?)<\/table>/m) do |m|
        m[0].split(/<tr>(.*?)<\/tr>/m).each do |block|
          elem = {}
          block.match(/<td>(.*?)<\/td>/m) {|title| elem[:title] = title[0]}
          curr = ""
          block.scan(/<td class='rtRates'>.*?from=(\w+)&amp;to=(\w+)'>(.*?)</m).each do |mtch|
            if mtch[0] == "USD"
              elem[:to] = mtch[2]          
              curr = mtch[1]
            end
            elem[:from] = mtch[2] if mtch[1] == "USD"
          end              
          data[curr] = elem if %w[EUR RUB KZT CNY GBP JPY].include?curr 
        end
      end
      seeds << {title:"EUR/USD", value:data["EUR"][:from], date:dt}
      seeds << {title:"EUR/KZT", value:data["EUR"][:from].to_f * data["KZT"][:to].to_f, date:dt}
      seeds << {title:"USD/KZT", value:data["KZT"][:to], date:dt}
      seeds << {title:"RUB/KZT", value:data["RUB"][:from].to_f * data["KZT"][:to].to_f, date:dt}
      seeds << {title:"CNY/KZT", value:data["CNY"][:from].to_f * data["KZT"][:to].to_f, date:dt}
      seeds << {title:"GBP/KZT", value:data["GBP"][:from].to_f * data["KZT"][:to].to_f, date:dt}          
      seeds << {title:"JPY/KZT", value:data["JPY"][:from].to_f * data["KZT"][:to].to_f, date:dt}                
    end
    break if dt.month == 5 && dt.day == 12
    dt += 1.day
  rescue
    retries += 1
    if retries >= 3
      File.open("currency_seed.rb", "w") do |f|
        f.write seeds.to_json
      end
      exit      
    end
    p "retrying #{retries}"
    sleep 1
  end    
end
File.open("currency_seed.rb", "w") do |f|
  f.write seeds.to_json
end
