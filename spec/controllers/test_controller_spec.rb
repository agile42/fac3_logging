require 'spec_helper'

RSpec.describe TestController, type: :controller do
  render_views

  it "a call get logged" do
    expect(Rails.logger).to receive(:info).with( /method=GET path=\/test format=html controller=TestController action=test/ )
    get :test
  end
end
