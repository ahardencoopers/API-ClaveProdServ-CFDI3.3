require 'mongo'

def get_clave(clave)
	result = ''
	mongoip = Socket.ip_address_list[1].inspect_sockaddr + ':27017'
	client = Mongo::Client.new([ mongoip ], :database => 'claveprod')
	client[:claves].find({:clave => clave}).each {|doc| result = doc}
	return {:clave => clave, :descripcion => ''}.to_json if result == ''
	return {:clave => result[:clave], :descripcion => result[:descripcion]}.to_json
	client.close
end

def buscar(clave, descripcion)
	descripcion = descripcion.split(' ').join('.*')
	result = []
	mongoip = Socket.ip_address_list[1].inspect_sockaddr + ':27017'
	client = Mongo::Client.new([ mongoip ], :database => 'claveprod')
	client[:claves].find({:clave => /.*#{Regexp.escape(clave)}.*/, :descripcion => /.*#{descripcion}.*/}).each {|doc| result.push({:clave => doc[:clave], :descripcion => doc[:descripcion]})}
	return {:claves => result}.to_json
	client.close
end
