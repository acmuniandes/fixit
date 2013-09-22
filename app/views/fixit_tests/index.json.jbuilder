json.array!(@fixit_tests) do |fixit_test|
  json.extract! fixit_test, :type, :details, :email, :location, :picture
  json.url fixit_test_url(fixit_test, format: :json)
end
