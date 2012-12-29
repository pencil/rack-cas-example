require 'rack/cas'
require 'rack-cas/session_store/active_record'
RackCasExample::Application.config.middleware.use Rack::CAS,
  server_url: 'https://casino.dev/',
  session_store: RackCAS::ActiveRecordStore