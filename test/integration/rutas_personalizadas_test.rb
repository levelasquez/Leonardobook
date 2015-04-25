require 'test_helper'

class RutasPersonalizadasTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "el /login abre la pagina de inicio de sesion" do
  	get '/iniciar_sesion'
  	assert_response :success
  end

  test "el /logout abre la pagina de cerrar de sesion" do
  	get '/salir'
  	assert_response :success
  	assert_redirected_to '/'
  end

  test "el /registro abre la pagina de registrar usuario" do
  	get '/registrarse'
  	assert_response :success
  end
end
