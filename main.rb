require 'sinatra'
require './data.rb'

get '/clave/:clave' do
	return get_clave(params[:clave].to_s)
end

get '/buscar' do
	return buscar(params[:clave].to_s, params[:descripcion].to_s)
end
