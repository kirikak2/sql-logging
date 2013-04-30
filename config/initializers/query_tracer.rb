class QueryTracer < Arproxy::Base
  def execute(sql, name = nil)
    result = super(sql, name)
    if Log4r::MDC.get("logging_#{sql}").present?
    end
    result
  end
end

Arproxy.configure do |config|
  config.adapter = 'mysql2'
  config.use QueryTracer
end

Arproxy.enable!
