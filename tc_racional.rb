# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
	
#Test de prueba
	def test_probando
		assert_equal("2/3", Fraccion.new(2,3).to_s)
	end

end
