class Tracer
  def self.d(message=nil)
    @my_log ||= Logger.new("#{Rails.root}/log/tracer.log")
    @my_log.debug(message) unless message.nil?
  end
end