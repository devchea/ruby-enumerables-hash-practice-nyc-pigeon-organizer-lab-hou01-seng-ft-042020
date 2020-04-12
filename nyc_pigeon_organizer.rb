require "pry"
def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |category, attribute|
    attribute.each do |attribute_value, array|
      array.each do |name|
        if pigeon_list[name] == nil
          pigeon_list[name] = {}
        end
        if pigeon_list[name][category] == nil
          pigeon_list[name][category] = []
        end
        if pigeon_list[name][category][attribute_value] == nil
          pigeon_list[name][category][attribute_value] << attribute_value.to_s
          binding.pry
        end
      end
    end
  end
  pigeon_list
end
