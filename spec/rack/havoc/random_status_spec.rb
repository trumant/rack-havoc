require 'spec_helper'
require 'rack/havoc/random_status'

describe Rack::Havoc::RandomStatus do
  include Rack::Test::Methods
  
  BODY = "Hello, World!"

  def app
    lambda { |env| [200, {'Content-Type' => 'text/plain'}, BODY] }
  end
  
  it "should return a random HTTP status" do
    get '/'
    last_response.status.should > 199
    last_response.status.should < 600
  end
  
  it "should return the original body if status is successful" do
    get '/'
    if last_response.status == 200 || last_response.status == 201
      last_response.body.should == BODY
    end
  end
end