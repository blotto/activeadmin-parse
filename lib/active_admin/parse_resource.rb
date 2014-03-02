require 'active_admin/parse_resource/version'
# require 'active_admin/mongoid/engine'
require 'active_admin'
require 'devise'
require 'rails'
require 'parse_resource'

require 'active_admin/parse_resource/comments'
require 'active_admin/parse_resource/adaptor'
require 'active_admin/parse_resource/filter_form_builder'
require 'active_admin/parse_resource/resource'
require 'active_admin/parse_resource/document'
require 'active_admin/parse_resource/helpers/collection'
require 'active_admin/parse_resource/criteria'

module ActiveAdmin
  module ParseResource
    class Railtie < ::Rails::Railtie
      config.after_initialize do
        I18n.backend.reload!
      end
    end
  end

  # class << self
  #   alias setup_without_mongoid setup
  #
  #   # Load monkey patches *after* the setup process
  #   def setup *args, &block
  #     setup_without_mongoid *args, &block
  #
  #   end
  # end
end
