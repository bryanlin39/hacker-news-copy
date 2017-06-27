require 'rails_helper'

RSpec.describe Post, type: :model do
  it { should validate_presence_of :title; :author; :link; :votes }
  it { should have_many :comments }
end
