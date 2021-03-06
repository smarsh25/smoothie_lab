# Instructions are written inline.
 
# docs you may enjoy
# http://www.ruby-doc.org/core-2.0/Hash.html
# http://ruby-doc.org/core-2.0/String.html
# http://ruby-doc.org/core-2.0/Array.html
 
# Every Morning I make a smoothie with the follow ingredients:
smoothie_ingredients = {
  'flax seeds' => '1 tbsp',
  'chia seeds' => '1 tbsp',
  'coconut flakes' => '1 tbsp',
  'spirulina' => '1 tsp',
  'pumpkin seeds' => '1 tbsp',
  'oatmeal' => '1/4 cup',
  'coco powder' => '1 tbsp',
  'peanut butter' => '1 tbsp',
  'almonds' => '1/4 cup',
  'walnuts' => '1/4 cup',
  'spinach' => '1/4 cup',
  'greek yogurt' => '1/4 cup',
  'nutrional yeast' => '1 tbsp',
  'brussel sprouts' => '1/4 cup',
  'asparagus' => '1/4 cup',
  'kale' => '1/4 cup',
  'brocoli rabe' => '1/4 cup',
  'blue berries' => '1/4 cup',
  'chopped banana' => '1/2 cup',
  'straw berries' => '1/4 cup',
  'mango' => '1/4 cup',
  'hemp milk' => '1 cup'
}
 
# Write a function called blend.
# It should take all the smoothie ingredients (not the measurements) and chop up and mix all 
# the characters and output a mixed string of characters
# Be sure to remove the spaces, as we don't want any air bubbles in our smoothie!
 
def blend(smoothie_ingredients)

  # extract just the ingredients (keys) from the ingredient list, pitch the measurement (values)
  ingredients = smoothie_ingredients.keys

  # concatenate all ingredients in to one long string
  combined_ingredients = ingredients.join
  
  # remove all spaces
  combined_ingredients.delete!(" ")

  # mix up the characters
  ingredients_array = combined_ingredients.chars          # convert to an array for easy mixing
  combined_ingredients = ingredients_array.shuffle.join   # shuffle, then convert back to string

  # output the new mixed up string
  puts combined_ingredients

end
 
 
# create a class called Blender
# It should have a method that takes an array of ingredients and returns a 
# mixed string of characters.
# Give the blender an on and off switch and only allow the blender to function when it's on.
# FOR SAFETY'S SAKE When you create a new blender by default it should be off.
# Blend the the smoothie array
 
class Blender
 
  # define instance_variable
  attr_accessor :switch
  
  # class instantiator, defaults switch to off
  def initialize()
    @switch = "off"
  end

  # define setter for switch - must be a valid value of 'on' or 'off'.
  def switch=(state)

    # I took 'on' and 'off' literally I guess. (could have used a boolean)
    valid_states = ["on", "off"]      
   
    if valid_states.include?(state)
      @switch = state
    else
      puts "Invalid switch state. use #{valid_states}."
    end
  end
 
   # a method that mixes and shows all the letters of the ingredients, minus spaces
   # NOTE: blender must be turned 'on'before it can blend!
   def blend(ingredients_and_measurements)

    if self.switch == "on"
      # extract just the ingredients (keys) from the list, pitch the measurement (values)
      ingredients = ingredients_and_measurements.keys

      # concatenate all ingredients in to one long string
      combined_ingredients = ingredients.join

      # remove all spaces
      combined_ingredients.delete!(" ")

      # mix up the characters
      ingredients_array = combined_ingredients.chars         # convert to an array for easy mixing
      combined_ingredients = ingredients_array.shuffle.join  # shuffle, then convert back to string

      # output the new mixed up string
      puts combined_ingredients
    else
      puts "You must turn the blender switch on before trying to blend!"
    end
  end

end

my_blender = Blender.new
my_blender.blend(smoothie_ingredients)
my_blender.switch = "on"
my_blender.blend(smoothie_ingredients)

