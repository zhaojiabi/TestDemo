require 'calabash-android/operations'

def copy_python_file_to_tools_folder(filename)
	doc = `path > "..\\path.txt"`
	y = 0
	sdkpath=""
	File.open(File.dirname(__FILE__) + '/../../path.txt',"r") do |file|
		file.each_line(";") do |lines|
			lines.each_line("\\") do |words|
				if y == 1 && "tools;" == words || y == 1 && "tools\n" == words then
					sdkpath = lines
					puts sdkpath
				end
				if "sdk\\" == words then
					y = 1
				end
			end
		end
	file = sdkpath
	j=0
	file.each_line("=") do |lines|
	  if j==1 then
	    sdkpath = lines
	  end
	  if "PATH="== lines then
	    j=1
	  end 
	end
	puts sdkpath
	system "copy /y ..\\src\\lib\\python\\#{filename}.py #{sdkpath}"
	end
end

def set_permission
    text=query("* id:'clicable_right'", :text)[3]
	if "ON" == text then 
		tap_when_element_exists("android.widget.Button index:4")
		sleep(5)
		copy_python_file_to_tools_folder 'argee'
		system 'monkeyrunner agree.py' 
		sleep(10)
	end
	sleep(10)
	start_app2
	text=query("* id:'clicable_right'", :text)[3]
	assert_equal("OFF", text, message="Turn GPS ON successfully.")
end

