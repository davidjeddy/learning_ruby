# class param interactin

# class attribute via params (good)
class GetSearchResult
  def self.call(params)
    new(params).call
  end

  def initialize(params)
    @params = params
  end

  def call
    # ... your code here ...
    @params # do something with @params
  end
end


# class attributes via setter **and **getter (better)
class GetSearchResult
  def self.call(params)
    new(params).call
  end

  def initialize(params)
    @params = params
  end

  def call
    # ... your code here ...
    params # do something with params method here
  end

  private

  def params
    @params
  end

  def params=(parameters)
    @params = parameters
  end
end

# class attribute via attr_* (best)
class GetSearchResult
  attr_reader :param

  def self.call(params)
    new(params).call
  end

  def initialize(params)
    @params = params
  end

  def call
    # ... your code here ...
    params # do something with params method here
  end
end

