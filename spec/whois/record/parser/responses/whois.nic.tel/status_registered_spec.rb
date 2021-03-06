# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.tel/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.nic.tel.rb'

describe Whois::Record::Parser::WhoisNicTel, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.nic.tel/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
  end

  describe "#domain" do
    it do
      subject.domain.should == "google.tel"
    end
  end
  describe "#domain_id" do
    it do
      subject.domain_id.should == "D587349-TEL"
    end
  end
  describe "#status" do
    it do
      subject.status.should == ["clientDeleteProhibited", "clientTransferProhibited", "clientUpdateProhibited"]
    end
  end
  describe "#available?" do
    it do
      subject.available?.should == false
    end
  end
  describe "#registered?" do
    it do
      subject.registered?.should == true
    end
  end
  describe "#created_on" do
    it do
      subject.created_on.should be_a(Time)
      subject.created_on.should == Time.parse("2009-03-23 23:59:59 GMT")
    end
  end
  describe "#updated_on" do
    it do
      subject.updated_on.should be_a(Time)
      subject.updated_on.should == Time.parse("2013-02-19 10:23:33 GMT")
    end
  end
  describe "#expires_on" do
    it do
      subject.expires_on.should be_a(Time)
      subject.expires_on.should == Time.parse("2014-03-22 23:59:59 GMT")
    end
  end
  describe "#registrar" do
    it do
      subject.registrar.should be_a(Whois::Record::Registrar)
      subject.registrar.id.should           == "292"
      subject.registrar.name.should         == "MARKMONITOR, INC."
    end
  end
  describe "#registrant_contacts" do
    it do
      subject.registrant_contacts.should be_a(Array)
      subject.registrant_contacts.should have(1).items
      subject.registrant_contacts[0].should be_a(Whois::Record::Contact)
      subject.registrant_contacts[0].type.should          == Whois::Record::Contact::TYPE_REGISTRANT
      subject.registrant_contacts[0].id.should            == "MMR-2383"
      subject.registrant_contacts[0].name.should          == "DNS Admin"
      subject.registrant_contacts[0].organization.should  == "Google Inc."
      subject.registrant_contacts[0].address.should       == "1600 Amphitheatre Parkway"
      subject.registrant_contacts[0].city.should          == "Mountain View"
      subject.registrant_contacts[0].zip.should           == "94043"
      subject.registrant_contacts[0].state.should         == "CA"
      subject.registrant_contacts[0].country.should       == "United States"
      subject.registrant_contacts[0].country_code.should  == "US"
      subject.registrant_contacts[0].phone.should         == "+1.6502530000"
      subject.registrant_contacts[0].fax.should           == "+1.6506188571"
      subject.registrant_contacts[0].email.should         == "dns-admin@google.com"
    end
  end
  describe "#admin_contacts" do
    it do
      subject.admin_contacts.should be_a(Array)
      subject.admin_contacts.should have(1).items
      subject.admin_contacts[0].should be_a(Whois::Record::Contact)
      subject.admin_contacts[0].type.should          == Whois::Record::Contact::TYPE_ADMINISTRATIVE
      subject.admin_contacts[0].id.should            == "MMR-2383"
      subject.admin_contacts[0].name.should          == "DNS Admin"
      subject.admin_contacts[0].organization.should  == "Google Inc."
      subject.admin_contacts[0].address.should       == "1600 Amphitheatre Parkway"
      subject.admin_contacts[0].city.should          == "Mountain View"
      subject.admin_contacts[0].zip.should           == "94043"
      subject.admin_contacts[0].state.should         == "CA"
      subject.admin_contacts[0].country.should       == "United States"
      subject.admin_contacts[0].country_code.should  == "US"
      subject.admin_contacts[0].phone.should         == "+1.6502530000"
      subject.admin_contacts[0].fax.should           == "+1.6506188571"
      subject.admin_contacts[0].email.should         == "dns-admin@google.com"
    end
  end
  describe "#technical_contacts" do
    it do
      subject.technical_contacts.should be_a(Array)
      subject.technical_contacts.should have(1).items
      subject.technical_contacts[0].should be_a(Whois::Record::Contact)
      subject.technical_contacts[0].type.should          == Whois::Record::Contact::TYPE_TECHNICAL
      subject.technical_contacts[0].id.should            == "MMR-2383"
      subject.technical_contacts[0].name.should          == "DNS Admin"
      subject.technical_contacts[0].organization.should  == "Google Inc."
      subject.technical_contacts[0].address.should       == "1600 Amphitheatre Parkway"
      subject.technical_contacts[0].city.should          == "Mountain View"
      subject.technical_contacts[0].zip.should           == "94043"
      subject.technical_contacts[0].state.should         == "CA"
      subject.technical_contacts[0].country.should       == "United States"
      subject.technical_contacts[0].country_code.should  == "US"
      subject.technical_contacts[0].phone.should         == "+1.6502530000"
      subject.technical_contacts[0].fax.should           == "+1.6506188571"
      subject.technical_contacts[0].email.should         == "dns-admin@google.com"
    end
  end
  describe "#nameservers" do
    it do
      subject.nameservers.should be_a(Array)
      subject.nameservers.should have(5).items
      subject.nameservers[0].should be_a(Whois::Record::Nameserver)
      subject.nameservers[0].name.should == "a0.cth.dns.nic.tel"
      subject.nameservers[1].should be_a(Whois::Record::Nameserver)
      subject.nameservers[1].name.should == "d0.cth.dns.nic.tel"
      subject.nameservers[2].should be_a(Whois::Record::Nameserver)
      subject.nameservers[2].name.should == "n0.cth.dns.nic.tel"
      subject.nameservers[3].should be_a(Whois::Record::Nameserver)
      subject.nameservers[3].name.should == "s0.cth.dns.nic.tel"
      subject.nameservers[4].should be_a(Whois::Record::Nameserver)
      subject.nameservers[4].name.should == "t0.cth.dns.nic.tel"
    end
  end
end
