SCHEDULER.every '1m', :first_in => 0 do |job|

  # Myql connection
  db = Mysql2::Client.new(:host => "RaspberryNAS", :username => "root", :password => "raspberry", :port => 3306, :database => "decibel_monitor")

  # Mysql query
  sql = "INSERT INTO adverage_data (plug_adverage, plug_peak, tub_adverage, tub_peak) SELECT AVG(plug_raw .decibel) AS plug_adverage, MAX(plug_raw .decibel) AS plug_peak, AVG(tub_raw .decibel) AS tub_adverage, MAX(tub_raw .decibel) AS tub_peak from plug_raw, tub_raw"

  # Execute the query
  results = db.query(sql)

# Mysql query	
 sql1 = "truncate tub_raw"

  # Execute the query
  results = db.query(sql1)

# Mysql query
  sql2 = "truncate plug_raw"

  # Execute the query
  results = db.query(sql2)





db.close
  end

