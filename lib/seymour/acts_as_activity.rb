module Seymour

  module ActsAsActivity
    extend ActiveSupport::Concern

    module ClassMethods
      def acts_as_activity
        include Distributable
        yield self if block_given?
      end
    end

  end
end

ActiveRecord::Base.send :include, Seymour::ActsAsActivity