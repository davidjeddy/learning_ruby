# p047classaccess.rb  
class ClassAccess  
  def m1          # this method is public  
  end  
  protected  
    def m2        # this method is protected  
    end  
  private  
    def m3        # this method is private  
    end  
end  
ca = ClassAccess.new  
puts ca.m1  
#puts ca.m2  
#puts ca.m3 
