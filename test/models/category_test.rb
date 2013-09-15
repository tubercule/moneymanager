require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  fixtures :categories
  
  test "the truth" do
    assert true
  end
  
  test "Category title shouldn't be empty" do
  	category = Category.new
  	assert category.invalid?
  	assert category.errors[:title].any?
  end
  
  test "Category title should be unique" do
  	category = Category.new(title:	categories(:one).title)
  	assert !category.save
 		#FIXME check error message
  end
  
  test "Category title valid" do
  	category = Category.new(title: "Valid category")
  	assert category.valid?
  end
end
