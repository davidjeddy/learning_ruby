# Class static method

class GetSearchResult
  def self.call(params)
    new(params).call
  end

  def initialize(params)
    @params = params
  end

  def call
    puts 'testing'
  end
end

params = 'testing params' 

GetSearchResult.call(params)

