require 'spec_helper'

RSpec.describe TestsController, type: :controller do
  it "a call get logged" do
    expect(Rails.logger).to receive(:info).with( /method=GET path=\/tests format=html controller=TestsController action=index/ )
    get :index
  end
end
