module Test_Logger
  formate_time = Time.now.strftime("%Y_%m_%d_%H_%M_%S")
  file = File.open(File.dirname(__FILE__) + "/../../log/#{formate_time}_log.log",\
                    File::WRONLY | File::APPEND | File::CREAT)

	LOGGER = Logger.new(file)
  LOGGER.level = Logger::DEBUG
  LOGGER.datetime_format = "%Y-%m-%d %H:%M:%S"
  LOGGER.formatter = proc do |severity, datetime, progname, msg|
    prog = progname == nil ? 'NULL' : progname
    "#{severity}, [#{datetime}] -- #{prog}: #{msg}\n"
  end
end