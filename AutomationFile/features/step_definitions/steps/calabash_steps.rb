require 'calabash-android/calabash_steps'

Then /^I see the guide page$/ do 
	element_exists("* id:'iv_guide_page_1'")
	wait_for_elements_exist("* id:'iv_guide_page_1'", :timeout => 10)
end

Then /^I drag from (\d+):(\d+) to (\d+):(\d+) moving$/ do |from_x, from_y, to_x, to_y|
  #perform_action('drag_coordinates', from_x, from_y, to_x, to_y)
  monkey_move_from 'from_x, from_y, to_x, to_y, 1'
end

Then /^I agree the permission$/ do
	sleep(5)
  	copy_python_file_to_tools_folder 'argee'
	system 'monkeyrunner agree.py' 
end