module Rack
  module Havoc
    class RandomStatus
      STATII = [200, 201, 301, 302, 303, 304, 307, 400, 401, 403, 404, 405, 406, 
            409, 410, 429, 500, 503, 504]
            
      def initialize app
        @app = app
      end
      
      def call env
        status, headers, body = @app.call env
        new_status = STATII.sample
        new_body = new_status < 301 ? body : ''
        [new_status, headers, new_body]
      end
    end
  end
end