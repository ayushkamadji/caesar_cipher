require_relative 'lib/caesar_cipher'
require 'sinatra'

configure do
  set(:views) { File.expand_path('../../views/', __FILE__) }
end

get "/" do
  plain_text = params['plain_text']
  cipher = params['cipher'].to_i

  cipher_text = ''
  unless plain_text == nil || cipher == nil
    cipher_text = caesar_cipher(plain_text, cipher)
  end
  
  erb :index, :locals => {cipher_text: cipher_text}
end
