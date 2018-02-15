require 'rails/generators'
require 'rails/generators/active_record'

module QBWC
  module Generators
    class MultiAccountGenerator < Rails::Generators::Base
      include Rails::Generators::Migration
      extend Rails::Generators::Migration

      namespace "qbwc:multi_account"
      desc "Enable Multi-Account features of QBWC"
      source_root File.expand_path('../templates', __FILE__)


      def active_record
        migration_template 'db/migrate/add_account_id_to_jobs_and_sessions.rb', 'db/migrate/add_account_id_to_jobs_and_sessions.rb'
      end

      def self.next_migration_number(dirname)
        ::ActiveRecord::Generators::Base.next_migration_number(dirname)
      end

    end
  end
end
