require 'sinatra'
require 'sinatra/reloader' if development?
require './caesar_cipher'

set :port, 9393

get '/' do
  inputtext = params['inputtext']
  inputnumber = params['inputnumber'].to_i
  outputtext = encrypt_text(inputtext, inputnumber)
  erb :index, locals: { outputtext: outputtext }
end
