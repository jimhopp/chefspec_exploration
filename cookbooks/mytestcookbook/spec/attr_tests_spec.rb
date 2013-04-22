require 'bundler/setup'
require 'chefspec'

describe 'attributes tests' do
  it 'chefspec converge picks up default attr values' do
    runner = ChefSpec::ChefRunner.new
    runner.converge 'mytestcookbook::default'
    expect(runner.node.mytestcookbook.attr_a).to eq 'default value'
  end
  it 'can set values for default attributes' do
    runner = ChefSpec::ChefRunner.new do |node|
      node.set["mytestcookbook"] = { :attr_a => 'bar' }
    end
    runner.converge 'mytestcookbook::default'
    expect(runner.node.mytestcookbook.attr_a).to eq 'bar'
  end
  it 'can set values for ohai attributes' do
    runner = ChefSpec::ChefRunner.new do |node|
      node.automatic_attrs["platform"] = "precise"
    end
    runner.converge 'mytestcookbook::default'
    expect(runner.node.automatic_attrs.platform).to eq 'precise'
  end
end
