class ApiConnector
  attr_accessor :errors, :attempts

  def send_data
    @errors = []
    @attempts = 0

    begin
      @attempts += 1
      api_call
    rescue Errno::ETIMEDOUT => e
      @errors << e
      retry if @attempts < 3
    end
  end

  def api_call
    raise Errno::ETIMEDOUT
  end
end
