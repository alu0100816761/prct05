require 'lib/gcd'
require 'lib/lcm'

class Fraccion
    attr_reader :x, :y
    def initialize(x, y)
        raise RuntimeError, 'El numerador no es un numero' unless x.is_a? Numeric
        raise RuntimeError, 'El denominador no es un numero' unless y.is_a? Numeric
        @x, @y = x, y
    end
    def to_s
        "#{@x}/#{@y}"
    end
    def *(value)
        x = @x * value
        max = gcd(x,y)
        Fraccion.new(x / max, @y / max)
    end
end