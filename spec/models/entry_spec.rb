# -*- coding: utf-8 -*-
require 'spec_helper'

describe Entry do
  
describe "fetch title" do
    context "HTTPが付いている場合" do
      
      before do
        @user = User.new(name:"user", password:"hoge",
                         password_confirmation:"hoge")
        @entry = Entry.new(url: "http://www.google.com")
        
        @entry.fetch_title
      end
        
      subject { @entry.title }
      
      it { should_not be_empty }
      it { should == "Google" }
      
    end
    
    context "HTTPが付いてない場合" do
      
    end

    context "文字コードがUTF-8でない場合" do
      
      before do
        @user = User.new(name:"user", password:"hoge",
                         password_confirmation:"hoge")
        @entry = Entry.new(url: "http://www.nintendo.co.jp/")
        
        @entry.fetch_title
      end
      
      subject { @entry.title }
      
      it { should_not be_empty }
      it { should == "任天堂ホームページ" }
      
    end
  end

end
