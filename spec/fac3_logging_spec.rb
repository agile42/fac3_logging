RSpec.describe Fac3Logging do
  it 'has a version number' do
    expect(Fac3Logging::VERSION).not_to be nil
  end

  it 'has lograge configured' do
    expect { Gem::Specification.find_by_name 'lograge' }.not_to raise_exception Gem::MissingSpecError
  end
end