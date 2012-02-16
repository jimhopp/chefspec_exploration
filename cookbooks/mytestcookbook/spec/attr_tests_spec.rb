require 'chefspec'

describe 'attributes tests' do
  it 'can set values for default attributes' do
    runner = ChefSpec::ChefRunner.new do |node|
      node["mytestcookbook"] = { :attr_a => 'bar' }
    end
    runner.converge 'mytestcookbook::default'
    runner.node.mytestcookbook.attr_a.should eq 'bar'
  end
end
