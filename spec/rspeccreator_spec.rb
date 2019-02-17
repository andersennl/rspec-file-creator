require "spec_helper"
require_relative "../src/rspeccreator"

describe "File creation" do
  let(:original_path) { "app/services/contacts/shorten_long_urls.rb" }

  describe "#spec_path" do
    let(:spec_file_path) { "spec/services/contacts/shorten_long_urls_spec.rb" }

    it "return the new spec's file path" do
      expect(spec_path(original_path)).to eq spec_file_path
    end
  end

  describe "#class_name" do
    let(:extracted_class_name) { "Contacts::ShortenLongUrls" }

    it "returns the correct file name" do
      expect(class_name(original_path)).to eq extracted_class_name
    end
  end
end
