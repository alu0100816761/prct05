require "./gcd.rb"

def lcm (a, b)
    w = gcd(a, b)
    (a*b)/w
end