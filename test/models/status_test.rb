require 'test_helper'

class StatusTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "un status requiere contenido" do
  	status = Status.new
  	assert !status.save
  	assert !status.errors[:contenido].empty?
  end

  test "cada status debe contener al menos dos letras" do
  	status = Status.new
  	status.contenido = "B"
  	assert !status.save
  	assert !status.errors[:contenido].empty?
  end

  test "cada estatus debe tener un user id" do
  	status = Status.new
  	status.contenido = "Hola mundo"
  	assert !status.save
  	assert !status.errors[:user_id].empty?

  end
end
