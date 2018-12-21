#!/usr/bin/ruby -w

time1 = Time.new
puts "Current Time : " + time1.inspect

# Time.now is a synonym:
time2 = Time.now
puts "Current Time : " + time2.inspect

time = Time.new

# Components of a Time
puts "Current Time : " + time.inspect
puts time.year    # => Year of the date 
puts time.month   # => Month of the date (1 to 12)
puts time.day     # => Day of the date (1 to 31 )
puts time.wday    # => 0: Day of week: 0 is Sunday
puts time.yday    # => 365: Day of year
puts time.hour    # => 23: 24-hour clock
puts time.min     # => 59
puts time.sec     # => 59
puts time.usec    # => 999999: microseconds
puts time.zone    # => "UTC": timezone name

# July 8, 2008
Time.local(2008, 7, 8)  
# July 8, 2008, 09:10am, local time
Time.local(2008, 7, 8, 9, 10)   
# July 8, 2008, 09:10 UTC
Time.utc(2008, 7, 8, 9, 10)  
# July 8, 2008, 09:10:11 GMT (same as UTC)
Time.gm(2008, 7, 8, 9, 10, 11)  

time = Time.new
values = time.to_a
p values

time = Time.new
values = time.to_a
puts Time.utc(*values)

# Returns number of seconds since epoch
time = Time.now.to_i  

# Convert number of seconds into Time object.
Time.at(time)

# Returns second since epoch which includes microseconds
time = Time.now.to_f

time = Time.new

# Here is the interpretation
time.zone       # => "UTC": return the timezone
time.utc_offset # => 0: UTC is 0 seconds offset from UTC
time.zone       # => "PST" (or whatever your timezone is)
time.isdst      # => false: If UTC does not have DST.
time.utc?       # => true: if t is in UTC time zone
time.localtime  # Convert to local timezone.
time.gmtime     # Convert back to UTC.
time.getlocal   # Return a new Time object in local zone
time.getutc     # Return a new Time object in UTC

time = Time.new
puts time.to_s
puts time.ctime
puts time.localtime
puts time.strftime("%Y-%m-%d %H:%M:%S")

now = Time.now          # Current time
puts now

past = now - 10         # 10 seconds ago. Time - number => Time
puts past

future = now + 10  # 10 seconds from now Time + number => Time
puts future

diff = future - past     # => 10  Time - Time => number of seconds
puts diff
