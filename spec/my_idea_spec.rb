require 'spec_helper'

describe MyIdea do
  it "lets you create a new idea" do
    expect(MyIdea.new(
      id: 1,
      product: "GoRails",
      company: {
        name: "One Month, Inc.",
        address: "37 Great Jones\nFloor 2\nNew York City, NY 10012",
        email: "teachers@onemonth.com"
      },
      line_items: [
        ["Product",        "GoRails"],
      ],
    ).class.name).to eq("Receipts::Receipt")
  end
end
