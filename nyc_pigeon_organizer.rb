require "pry"
def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |category, attribute|
    binding.pry
    attribute.each do |attribute_value, array|
      binding.pry
      array.each do |name|
        if pigeon_list[name] == nil
          pigeon_list[name] = {}
        end
        if pigeon_list[name][category] == nil
          pigeon_list[name][category] = {}
          binding.pry
        end
      end
    end
  end
  pigeon_list
end
