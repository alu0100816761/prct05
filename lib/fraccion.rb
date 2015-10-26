require "./gcd.rb"
require "./lcm.rb"

class Fraccion
    
    attr_reader :x, :y
    
    def initialize(x, y)
        raise RuntimeError, 'El numerador no es un numero' unless x.is_a? Numeric
        raise RuntimeError, 'El denominador no es un numero' unless y.is_a? Numeric
        raise RuntimeError, 'El denominador no puede ser cero' unless y.is_a? 0
        @x, @y = x, y
    end
    
    def to_s
        "#{@x}/#{@y}"
    end
    
end