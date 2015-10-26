require 'lib/fraccion'
require 'test/unit'

class TestFraccion < Test::Unit::TestCase
    def setup
        @datouno = Fraccion.new(2,3)
        @datodos = Fraccion.new(5,8)
    end
    def test_simple
        assert_equal("2/3", @datouno.to_s)
        assert_equal("5/2", (@datodos*4).to_s)
    end
end