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

	#Funcion para Sumar.
	def suma(c, d) 
		result = Fraccion.new(@a*d + @b*c, @b*d)	
		#puts "Suma:"		
		#puts result
	end

	#Funcion para Sumar.
	def resta(c, d) 
		result = Fraccion.new(@a*d - @b*c, @b*d)	
	end

	#Funcion para Multiplicar
	def mult(c, d)
		result = Fraccion.new(@a*c, @b*d)	
	end

	#Funcion para Dividir
	def div(c, d)
		result = Fraccion.new(@a*d , @b*c)
	end

end

=begin
#Prueba de la suma
A = Fraccion.new(4,3).suma(1,3)
puts A

#Prueba de la Resta
B = Fraccion.new(4,5).resta(1,2)
C = Fraccion.new(5,3).resta(2,3)
puts B
puts C
=end

D = Fraccion.new(4,5).mult(1,2)
E = Fraccion.new(5,3).div(2,3)
puts D
puts E
