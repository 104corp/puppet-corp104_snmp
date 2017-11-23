require 'spec_helper_acceptance'

describe 'install corp104_snmp' do
  context 'default parameters' do
    it 'should install package' do
      pp = "class { 'corp104_snmp': }"

      # Run it twice and test for idempotency
      apply_manifest(pp, :catch_failures => true)
      apply_manifest(pp, :catch_changes => true)
    end
  end

  context 'change node version' do
    it 'should install package' do
      pp = <<-EOS
        class { 'corp104_snmp':
          com2sec_community => 'pass2snmp',
          com2sec6_community => 'pass2snmp',
        }
      EOS

      # Run it twice and test for idempotency
      apply_manifest(pp, :catch_failures => true)
      apply_manifest(pp, :catch_changes => true)
    end
  end
end
