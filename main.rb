require 'sinatra'
require './data.rb'

set(:port,'4567')
set(:bind,'0.0.0.0')

get '/' do
	return 'Busca las claves del catálogo ClaveProdServ para el CFDI 3.3 <br> <a href=http://104.236.245.141:4567/buscar?descripcion=Software">http://http://104.236.245.141:4567/buscar?descripcion=Software</a> <br> Más información en <a href="https://github.com/ahardencoopers/API-ClaveProdServ-CFDI3.3">https://github.com/ahardencoopers/API-ClaveProdServ-CFDI3.3</a>'
end

get '/busqueda' do
	send_file('public/busqueda.html')
end

get '/clave/:clave' do
	return get_clave(params[:clave].to_s)
end

get '/buscar' do
	return buscar(params[:clave].to_s, params[:descripcion].to_s)
end
