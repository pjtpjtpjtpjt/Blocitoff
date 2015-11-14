require 'rake'
require 'rufus-scheduler'
scheduler = Rufus::Scheduler.new
scheduler.every '1d' do
'rake todo:delete_items'
end 
