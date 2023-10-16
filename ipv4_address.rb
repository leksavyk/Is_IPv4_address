def is_ipv4_address(address)
  parts = address.split('.')
  return false unless parts.length == 4
  parts.each do |part|
    return false unless (0..255).cover?(part.to_i) && part == part.to_i.to_s
  end
  true
end

if ARGV.empty?
  puts "Enter an IPv4-address (for example 192.45.147.89)"
  exit
end

address = ARGV[0]
puts is_ipv4_address(address)