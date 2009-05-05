require File.dirname(__FILE__) + '/../spec_helper'

document = mock("my document")
document.should_receive(:print).and_return(false)
