require("./utils.rb")

class Problem62
  def Problem62.run
    cubes = (1..350).map{|x| x**3}
    results = {}
    
    cubes.each do |x|
      count = 0
      cube = x**3
      cube_chars = cube.to_s.chars.to_a
      perms = cube_chars.permutation(cube_chars.length).to_a.select{|p| p[0] != "0"}.map{|p| Integer(p.join)}
        
      found_cubes = results.keys & perms
      count += found_cubes.length
      
      results[cube] = count
    end
    puts results.values.max
    puts results.invert[results.values.max]
  end
end