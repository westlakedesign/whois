# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.ch/property_contacts.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.nic.ch.rb'

describe Whois::Record::Parser::WhoisNicCh, "property_contacts.expected" do

  subject do
    file = fixture("responses", "whois.nic.ch/property_contacts.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
  end

  describe "#registrant_contacts" do
    it do
      subject.registrant_contacts.should be_a(Array)
      subject.registrant_contacts.should have(1).items
      subject.registrant_contacts[0].should be_a(Whois::Record::Contact)
      subject.registrant_contacts[0].name.should == "EISD John"
      subject.registrant_contacts[0].address.should == "Room 208, Furong Road, Changsha City\nCN-41000 Changsha\nChina"
    end
  end
  describe "#technical_contacts" do
    it do
      subject.technical_contacts.should be_a(Array)
      subject.technical_contacts.should have(1).items
      subject.technical_contacts[0].should be_a(Whois::Record::Contact)
      subject.technical_contacts[0].name.should == "xie huijie"
      subject.technical_contacts[0].address.should == "xie huijie\nNo95.Lane768.Ruili Road.Minhang District\nCN-200240 shanghai\nChina"
    end
  end
  describe "#admin_contacts" do
    it do
      lambda { subject.admin_contacts }.should raise_error(Whois::AttributeNotSupported)
    end
  end
end
