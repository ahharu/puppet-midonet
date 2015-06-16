require 'spec_helper_acceptance'

describe 'midonet all-in-one' do

  context 'default parameters' do
    it 'should work with no errors' do
      pp = <<-EOS
      class { 'midonet': }
      EOS

      # Run it twice for test the idempotency
      apply_manifest(pp, :catch_failures => true)
      apply_manifest(pp, :catch_failures => true)
    end
  end
end
