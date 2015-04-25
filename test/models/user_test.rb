require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "Un usuario deberia entrar su primer nombre" do
  	user = User.new
  	assert !user.save
  	assert !user.errors[:primer_nombre].empty?
  end

  test "Un usuario deberia entrar su primer apellido" do
  	user = User.new
  	assert !user.save
  	assert !user.errors[:primero_apellido].empty?
  end

  test "Un usuario deberia entrar su nombre de perfil" do
  	user = User.new
  	assert !user.save
  	assert !user.errors[:nombre_perfil].empty?
  end

  test "Un usuario deberia entrar un nombre de perfil unico" do
  	user = User.new
  	user.nombre_perfil = users(:leo).nombre_perfil
  	assert !user.save
  	assert !user.errors[:nombre_perfil].empty?
  end

  test "Un usuario deberia entrar su nombre de perfil con formato" do
  	user = User.new
  	user.nombre_perfil = "Mi nombre con espacios"
  	
  	assert !user.save
  	assert !user.errors[:nombre_perfil].empty?
  	assert user.errors[:nombre_perfil].include?("Debe estar formateado correctamente.")
  end
end
