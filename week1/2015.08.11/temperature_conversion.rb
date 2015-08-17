# Given a hash of average temperatures:
#      average_temperature_in_c = {vancouver: 13.7, edmonton: 8.5, Calgary: 10.5}
# Create another hash called average_temperature_in_f that has the same keys
# (city names) but the temperatures are in Fahrenheit instead of Celcius.
#      The formula to convert Celsius to Fahrenheit is: F = C * 9/5 + 32

def c_to_f( temperature_c )
  temperature_c * 9.0/5.0 + 32
end

average_temperature_in_c = {Vancouver: 13.7, Edmonton: 8.5, Calgary: 10.5, Winnipeg: -40}
average_temperature_in_f = {}

average_temperature_in_c.each { |city, temperature_c| average_temperature_in_f[city] = c_to_f( temperature_c)}
print average_temperature_in_f, "\n"
