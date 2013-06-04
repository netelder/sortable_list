# require APP_ROOT.join('app', 'models', 'item')
require_relative '../models/item'

get '/' do
  # Look in app/views/index.erb
  @array_of_name_strings = Item.name_in_order
  erb :index
end

# TBD: need a new route to accept an update from the client browser to update
# the item postion.  The items will swap position numbers.
