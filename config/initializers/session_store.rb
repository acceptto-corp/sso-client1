# Be sure to restart your server when you modify this file.

require 'rack-cas/session_store/rails/active_record'
AccepttoSsoClient::Application.config.session_store :rack_cas_active_record_store

#AccepttoSsoClient::Application.config.session_store :cookie_store, key: '_acceptto-sso-client_session'
