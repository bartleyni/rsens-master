require 'mysql2'

SCHEDULER.every '0.5s', :first_in => 0 do |job|

  # Myql connection
  db = Mysql2::Client.new(:host => "RaspberryNAS", :username => "root", :password => "raspberry", :port => 3306, :database => "decibel_monitor" )

  # Mysql query
  sql = "SELECT plug_raw.decibel as plug, tub_raw.decibel as tub FROM plug_raw, tub_raw ORDER BY tub_raw.id DESC, plug_raw.id DESC LIMIT 1"

  # Execute the query
  results = db.query(sql)

  # Sending to List widget, so map to :label and :value
 results.each do |row|
 send_event('tub', {value: row['tub']})
 send_event('plug', {value: row['plug']})
  end
db.close

end

# :first_in sets how long it takes before the job is first run. In this case, it is run immediately
#SCHEDULER.every '2s', :first_in => 0 do |job|

 # send_event('tub', { value: rand(130) })
  #send_event('plug', { value: rand(130) })

#end
