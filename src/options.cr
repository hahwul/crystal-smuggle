class Options
  def initialize(
    @method : String,
    @headers : String,
    @timeout : Int32,
    @output : String
  )
  end

  def method
    return @method
  end

  def headers
    return @headers
  end

  def timeout
    return @timeout
  end

  def output
    return @output
  end
end
