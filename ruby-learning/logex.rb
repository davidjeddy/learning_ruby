require 'logger'  
# Keep data for the current month only  
Logger.new('this_month.log', 'monthly')  
# Keep data for today and the past 20 days.  
Logger.new('application.log', 20, 'daily')  
# Start the log over whenever the log exceeds 100 megabytes in size.  
Logger.new('application.log', 0, 100 * 1024 * 1024)  

#logex.rb
require 'logger'
$LOG = Logger.new('log_file.log', 'monthly')
def divide(numerator, denominator)
  $LOG.debug("Numerator: #{numerator}, denominator #{denominator}")
  begin
    result = numerator / denominator
  rescue Exception => e
    $LOG.error "Error in division!: #{e}"
    result = nil
  end
  return result
end
divide(10, 2)



divide(10, 0)
