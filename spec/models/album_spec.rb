require "rails_helper"

describe Album do
  it { should validate_presence_of :title }
end
