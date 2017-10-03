RSpec.describe Fac3Logging do
  it 'has a version number' do
    expect(Fac3Logging::VERSION).not_to be nil
  end

  it 'railtie configure lograge' do
    expect( Rails.config.lograge.enable ).to eq( true )
  end
end