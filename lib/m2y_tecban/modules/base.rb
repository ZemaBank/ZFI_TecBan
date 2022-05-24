module M2yTecban
  class Base
    def self.base_url
      M2yTecban.configuration.server_url
    end

    def self.post(url, body, headers = nil)
      headers = base_headers if headers.nil?
      # puts "Sending POST request to URL: #{url}"
      begin
        if M2yTecban.configuration.production?
          response = HTTParty.post(url, headers: headers, body: body.to_json)
        else
          response = HTTParty.post(url, headers: headers, body: body.to_json, debug_output: $stdout)
        end
      rescue Timeout::Error
        return timeout_response
      end
      response
    end

    def self.get(url, headers = nil)
      headers = base_headers if headers.nil?
      # puts "Sending GET request to URL: #{url}"
      begin
        response = HTTParty.get(url, headers)
      rescue Timeout::Error
        return timeout_response
      end
      response
    end

    def self.timeout_response
      {
        status_code: 408,
        'Descricao': 'Houve um erro inesperado, tente novamente mais tarde'
      }
    end
  end
end