module ActiveApi

  class Base
    attr_accessor :end_point

    include HTTParty
    base_uri self.new.end_point

    def initialize(params= {})
      params.each do |key,value|
        self.class.send(:attr_accessor, key)
        instance_variable_set("@#{key}", value)
      end
    end

    def self.all
      self.get(url).parsed_response.map do |object|
        self.new(object)
      end
    end

    def self.url
      @url ||= self.new.end_point
    end

    def self.model_name
      self.class.to_s
    end

  end
end