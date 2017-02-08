require 'calabash-android/calabash_steps'

Given /^I see the guide page and go to the home page$/ do 
	wait_for_elements_exist("* text:'开始学习'", :timeout => 10)
	tap_when_element_exists("android.widget.Button {text CONTAINS[c] '开始学习'}")
	screenshot_embed
	wait_for_elements_exist("* text:'去创建任务'", :timeout => 10)
	tap_when_element_exists("android.widget.Button {text CONTAINS[c] '去创建任务'}")
	screenshot_embed
	wait_for_elements_exist("* text:'学习使用滴答清单'", :timeout => 10)
	tap_when_element_exists("com.ticktick.task.view.NewbieTipView")
	screenshot_embed
	wait_for_elements_exist("* text:'和女朋友去看电影'", :timeout => 10)
	tap_when_element_exists("com.ticktick.task.view.NewbieTipView")
	screenshot_embed
	wait_for_elements_exist("* text:'去设置提醒'", :timeout => 10)
	tap_when_element_exists("android.widget.Button {text CONTAINS[c] '去设置提醒'}")
	screenshot_embed
	wait_for_elements_exist("* text:'设置日期'", :timeout => 10)
	tap_when_element_exists("com.ticktick.task.view.NewbieTipView")
	screenshot_embed
	wait_for_elements_exist("* text:'设置时间'", :timeout => 10)
	tap_when_element_exists("com.ticktick.task.view.NewbieTipView")
	screenshot_embed
	wait_for_elements_exist("* text:'设置重复'", :timeout => 10)
	tap_when_element_exists("com.ticktick.task.view.NewbieTipView")
	screenshot_embed
	wait_for_elements_exist("* text:'去完成任务'", :timeout => 10)
	tap_when_element_exists("android.widget.Button {text CONTAINS[c] '去完成任务'}")
	screenshot_embed
	wait_for_elements_exist("* text:'学习使用滴答清单'", :timeout => 10)
	tap_when_element_exists("com.ticktick.task.view.NewbieTipView")
	screenshot_embed
	wait_for_elements_exist("* text:'进入应用'", :timeout => 10)
	tap_when_element_exists("android.widget.Button {text CONTAINS[c] '进入应用'}")
	screenshot_embed
end

