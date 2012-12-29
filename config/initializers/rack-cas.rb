require 'rack/cas'
require 'rack-cas/session_store/active_record'
RackCasExample::Application.config.middleware.use Rack::CAS,
  server_url: 'http://casino.dev/',
  session_store: RackCAS::ActiveRecordStore
