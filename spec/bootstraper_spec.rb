require "spec_helper"

describe Bootstraper do
  it "should have a version" do
    Bootstraper::Version::STRING.should match(/\d+\.\d+\.\d+$/)
  end
end