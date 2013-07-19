require 'spec_helper'
require 'active_model'
require 'activemodel_errors_type'

describe ActiveModel::Errors do

  class DummyClass
    include ActiveModel::Validations
    include ActiveModel::Conversion
    extend ActiveModel::Naming

    attr_accessor :foo, :bar, :baz

    validates :foo, :presence => true, :numericality => true
    validates :bar, :inclusion => { :in => 0..99 }
    validates :baz, :numericality => true

    def initialize(attributes = {})
      attributes.each do |name, value|
        send("#{name}=", value)
      end
    end

    def persisted?
      false
    end
  end

  before(:each) do
    @d = DummyClass.new
    @d.valid?
  end

  it 'should return correct error types' do
    @d.valid?.should == false
    types = @d.errors.with_types
    types.should be_a(Hash)
    types[:foo].should include(:blank)
    types[:foo].should include(:not_a_number)
    types[:foo].size.should == 2

    types[:bar].should == [:inclusion]
    types[:baz].should == [:not_a_number]
  end

  it 'should clear the errors when fixed' do
    @d.foo = '12'
    @d.valid?.should == false
    @d.errors.with_types[:foo].should be_nil
  end

end
