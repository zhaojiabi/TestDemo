#Import the monkeyrunner modules and used by this program
from com.android.monkeyrunner import MonkeyRunner, MonkeyDevice
#Connects to the current device, returning a monkey device obiect
device = MonkeyRunner.waitForConnection()
#Press right button
MonkeyRunner.sleep(2)
device.touch(158,1272,"DOWN_AND_UP")
MonkeyRunner.sleep(2)
device.touch(229,1440,"DOWN_AND_UP")
#device.touch(512,502,"DOWN_AND_UP")
#device.touch(1024,552,"DOWN_AND_UP")