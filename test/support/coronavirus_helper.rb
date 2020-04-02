def coronavirus_landing_page_content_item
  json = File.read(
    Rails.root.join("test/fixtures/content_store/coronavirus_landing_page.json"),
  )
  JSON.parse(json)
end

def coronavirus_content_item
  GovukSchemas::RandomExample.for_schema(frontend_schema: "coronavirus_landing_page") do |item|
    item.merge(coronavirus_landing_page_content_item)
  end
end

def coronavirus_content_item_with_no_time
  content_item = coronavirus_content_item
  content_item["details"]["live_stream"]["time"] = nil
  content_item
end
