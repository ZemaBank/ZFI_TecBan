module M2yTecban
  class Openbanking
    # https://hh-pub.zem.hml.sandbox-tecban.com.br/auth/
    def self.get_auth(body)
      get(BASE_HH + base_url + AUTH_PATH, parsed_body(body))
    end

    # https://cm-pub.zem.hml.sandbox-tecban.com.br/v2.2/consents/
    def self.get_consent(body)
      post(BASE_CM + base_url + CONSENT_URL, parsed_body(body))
    end
  end
end