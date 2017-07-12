require 'sinatra'
require './data.rb'

get '/' do
	return 'Busca las claves del catálogo ClaveProdServ para el CFDI 3.3 <br> <a href="http://http://104.236.245.141:4567/buscar?descripcion=Software">http://http://104.236.245.141:4567/buscar?descripcion=Software</a> <br> Más información en <a href="https://github.com/ahardencoopers/API-ClaveProdServ-CFDI3.3">https://github.com/ahardencoopers/API-ClaveProdServ-CFDI3.3</a>'
end

get '/clave/:clave' do
	return get_clave(params[:clave].to_s)
end

get '/buscar' do
	return buscar(params[:clave].to_s, params[:descripcion].to_s)
end
