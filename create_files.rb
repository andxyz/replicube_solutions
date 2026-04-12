#!/usr/bin/env ruby

require 'json'

def sanitize_dir_string(dir_name:)
  dir_name.gsub!(/ /, '_')
  dir_name.gsub!(/[^0-9A-Za-z_]/, '')
  dir_name.gsub!(/_+$/, '')

  dir_name
end

def dump_data(dirname_lookup:)

  file_content = File.read('puzzles.json')
  puzzles = JSON.parse(file_content)
  puzzles.each do |puzzle|
    next if puzzle['source'] != 100

    secret_puzzle_id = puzzle['id']
    puts "#"*13
    puts "#{secret_puzzle_id}:"
    puts "#"*13

    looked_up_dirname = dirname_lookup.fetch(secret_puzzle_id)
    clean_dirname = sanitize_dir_string(dir_name: looked_up_dirname)
    Dir.mkdir(clean_dirname) unless Dir.exist?(clean_dirname)

    puzzle['variant_order'].each_with_index do |code_tab_name, i|
      filename = format("%02d_#{code_tab_name}", i)
      puts "#{filename}: "
      puts puzzle['code_variants'][code_tab_name]
      File.open("#{clean_dirname}/#{filename}.lua", "w") do |file|
        file.puts puzzle['code_variants'][code_tab_name]
      end
    end

    puts "\n\n"
  end

end

proper_dirname_lookup = {
  '3do.txt' => "058 First-gen 3D game console",
  '8ball.txt' => "046 8-Ball",
  'angle-stack.txt' => "Angle Stack", # No match found in list
  'angled_rainbow.txt' => "017 Angled Rainbow",
  'axis_frame.txt' => "Axis Frame", # No match found in list
  'baseball_bat.txt' => "041 Baseball Bat",
  'basic_cup.txt' => "009 Basic Cup",
  'basic_hourglass.txt' => "020 Basic Hourglass",
  'basketball.txt' => "042 Basketball Ball",
  'basketball_hoop.txt' => "044 Basketball Hoop",
  'bed.txt' => "061 Bed",
  'biplane.txt' => "063 Biplane",
  'bouncing_ball.txt' => "Bouncing Ball", # No match found in list
  'bowling.txt' => "045 Bowling",
  'brick.txt' => "029 Brick Wall",
  'burger.txt' => "068 Burger",
  'camera.txt' => "037 Camera",
  'chair.txt' => "023 Little Chair",
  'change-the-operators.txt' => "003 In Comparison",
  'checkerboard.txt' => "016 Checkerboard",
  'clock.txt' => "Analog Clock", # No match found in list
  'colorful-grid.txt' => "007 Importance of END",
  'cookie.txt' => "067 Cookie",
  'corner-intersect.txt' => "Corner Intersect", # No match found in list
  'creamsicle.txt' => "034 Orange Creamsicle",
  'cute_building.txt' => "035 Building",
  'cute_computer.txt' => "031 Cute Computer",
  'd6.txt' => "057 Roll a D6",
  'doggo.txt' => "025 Doggo",
  'dolphin.txt' => "Dolphin", # No match found in list
  'donut.txt' => "069 Donut",
  'empty-space.txt' => "004 Explicit Nothingness",
  'fancy_hourglass.txt' => "026 Fancy Hourglass",
  'ferris-wheel.txt' => "Ferris Wheel", # No match found in list
  'first_condition.txt' => "002 Conditions May Apply",
  'football.txt' => "039 Football",
  'fractal-castle.txt' => "Fractal Castle (Cantor)", # No match found in list
  'framework.txt' => "Framework", # No match found in list
  'full_diagonal.txt' => "014 Big X",
  'gameboy.txt' => "038 Nostalgic Handheld Game",
  'green_planet.txt' => "066 Green Planet",
  'groucho.txt' => "060 Clever Disguise",
  'guitar.txt' => "049 Guitar",
  'headphones.txt' => "050 Headphones",
  'hello.txt' => "001 The Very Basics",
  'hello_modulo.txt' => "015 Hello, Modulo",
  'impossible_tower.txt' => "059 Improbable Tower",
  'island.txt' => "Island", # No match found in list
  'keyboard.txt' => "048 Synthesizer",
  'menger_sponge.txt' => "Menger Sponge", # No match found in list
  'mini-duck.txt' => "021 Tiny Duck",
  'mini_dna.txt' => "Mini DNA", # No match found in list
  'mini_truck.txt' => "052 Mini Truck",
  'nested_frames.txt' => "Nested Frames", # No match found in list
  'nested_if.txt' => "010 Quadrants",
  'no_sign.txt' => "065 NO",
  'not_flower.txt' => "027 Not a Flower :)",
  'octo-gem.txt' => "Octo-Gem", # No match found in list
  'octopus.txt' => "053 Octopus",
  'outlet.txt' => "056 Power Outlet",
  'penguin_i_guess.txt' => "032 Penguin?",
  'pool-table.txt' => "047 Billiards Table",
  'puzzle_cube.txt' => "030 Puzzle Cube",
  'reverse-stairs.txt' => "022 Stairwell",
  'roadtrip.txt' => "Road Trip!", # No match found in list
  'roman_temple.txt' => "Roman Temple", # No match found in list
  'school-desk.txt' => "064 School Desk",
  'seven_seg.txt' => "7-Segment Display", # No match found in list
  'simple-sushi.txt' => "008 Simple Sushi",
  'simple_diagonal.txt' => "013 Diagonal Line",
  'simple_quadrant.txt' => "005 Simple Quadrant",
  'simple_stairs.txt' => "012 Staircase",
  'simple_table.txt' => "018 Wooden Table",
  'sofa.txt' => "062 Sofa",
  'spiral.txt' => "Spiral", # No match found in list
  'stairs-bounce.txt' => "Bouncing Down", # No match found in list
  'strawberry.txt' => "024 Strawberry",
  'strawberry_cake_slice.txt' => "019 Strawberry Cake Slice",
  't-square.txt' => "T-Square", # No match found in list
  'taco.txt' => "036 Taco",
  'tennis_ball.txt' => "040 Tennis Ball",
  'tennis_raquet.txt' => "043 Tennis Racquet",
  'tic-tac-toe-board.txt' => "006 3x3 Grid",
  'tic-tac-toe-game.txt' => "033 Tic-Tac-Toe",
  'tiled_room.txt' => "028 Tiled Room",
  'toaster.txt' => "Toaster", # No match found in list
  'traffic_light.txt' => "Traffic Light", # No match found in list
  'treadmill.txt' => "Treadmill", # No match found in list
  'tri-pyramid.txt' => "Tri-Pyramid", # No match found in list
  'triple-spiral.txt' => "Triple Spiral", # No match found in list
  'tv_color_bars.txt' => "CRT TV (No Signal)", # No match found in list
  'u-pipe.txt' => "070 U Pipe", # Associated with list entry 070 (Watermelon/UPipe logic)
  'vicsek.txt' => "Vicsek Snowflake", # No match found in list
  'waterfall.txt' => "Waterfall", # No match found in list
  'watermelon.txt' => "070 Watermelon",
  'wide_tank.txt' => "055 Toy Tank",
  'winter-hat.txt' => "054 Winter Hat",
  'x-wall.txt' => "011 Variable Outcomes",
  'xylophone.txt' => "051 Xylophone",
  'xyz-lattice.txt' => "XYZ Lattice" # No match found in list
}

dump_data(dirname_lookup: proper_dirname_lookup)
