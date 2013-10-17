# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
	attr_reader :a, :b
	
	def initialize(a, b)
		mcd = gcd(a, b) 	
    @a = a/mcd
	    if b != 0
	      @b = b/mcd
	    else
	      raise ArgumentError , 'ERROR: El denominador no puede ser 0.'
	    end
	end

	#Funcion para imprimir un numero racional
	def to_s
		if @b == 1 #Si el denominador es 1, solo se imprimer el numerador
			"#{@a}"
		else
			"#{@a}/#{@b}"	
		end	
	end


end

A = Fraccion.new(2,3)
puts A

B = Fraccion.new(2,1)
puts B
