require 'mongo'

mongoip = Socket.ip_address_list[1].inspect_sockaddr + ':27017'
client = Mongo::Client.new([ mongoip ], :database => 'claveprod')

csv = File.open('claveProdServ.csv')
csv.each_line do |line|
	clave = line.split(',')
	client[:claves].insert_one({:clave => clave[0], :descripcion => clave[1]})
end
client.close
