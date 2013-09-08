require 'spec_helper'

describe Comment do
  before { @comment = Comment.new(name: "Emi", email: "emi@emi.com", comment: "Nice website!") }

  subject { @comment }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:comment) }
  it { should be_valid }

  describe "Comment is not accepted when name is not present" do
    before { @comment.name = " " }
    it { should_not be_valid }
  end

  describe "Comment is not accepted when comment is not present" do
    before { @comment.comment = " " }
    it { should_not be_valid }
  end

  describe "Comment is accepted when email is not present" do
    before {@comment.email = ""}
    it { should be_valid }
  end

  describe "Comment is not accepted when name is too long" do
    before { @comment.name = "a" * 61 }
    it { should_not be_valid }
  end

  # TODO: add this tests. See how validates works with either a regular expression or an empty value
  #describe "when email format is invalid" do
  #  it "should be invalid" do
  #    addresses = %w[user@foo,com user_at_foo.org example.user@foo.
  #                   foo@bar_baz.com foo@bar+baz.com]
  #    addresses.each do |invalid_address|
  #      @comment.email = invalid_address
  #      expect(@comment).not_to be_valid
  #    end
  #  end
  #end
  #
  #describe "when email format is valid" do
  #  it "should be valid" do
  #    addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
  #    addresses.each do |valid_address|
  #      @comment.email = valid_address
  #      expect(@comment).to be_valid
  #    end
  #  end
  #end

end
