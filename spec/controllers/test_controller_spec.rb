require 'spec_helper'

RSpec.describe TestController, type: :controller do
  it "a call get logged" do
    expect(Rails.logger).to receive(:info).with( /method=GET path=\/tests format=html controller=ApplicationController action=index/ )
    get :test
  end
end
