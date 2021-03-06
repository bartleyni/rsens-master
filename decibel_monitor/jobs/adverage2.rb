require 'mysql2'

SCHEDULER.every '1m', :first_in => 0 do |job|

  # Myql connection
  db = Mysql2::Client.new(:host => "RaspberryNAS", :username => "root", :password => "raspberry", :port => 3306, :database => "decibel_monitor" )

  # Mysql query
  sql = "SELECT plug_adverage, tub_adverage, plug_peak, tub_peak FROM adverage_data ORDER BY timestamp DESC LIMIT 1;"

  # Execute the query
  results = db.query(sql)

  # Sending to List widget, so map to :label and :value
 results.each do |row|
 send_event('tub-adverage', {value: row['tub_adverage']})
 send_event('plug-adverage', {value: row['plug_adverage']})
 send_event('tub-peak', {value: row['tub_peak']})
 send_event('plug-peak', {value: row['plug_peak']})

  end

db.close

end

