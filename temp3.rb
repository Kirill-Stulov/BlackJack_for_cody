class Color2
  COLORS = { red: "#f00", green: "#0f0", blue: "#00f", white: "#fff" }
  def code(name)
    @code = COLORS[name] || "#000"
end

color1 = Color2.new

puts color1.code(:blue)
