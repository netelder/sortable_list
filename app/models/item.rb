#require APP_ROOT.join('config', 'environment')

class Item < ActiveRecord::Base
  # Remember to create a migration!
  def self.name_in_order
    objects = Item.all.sort{|a,b| a.position <=> b.position}
    objects.map{|object| object.name} #return an array of string
  end

end
