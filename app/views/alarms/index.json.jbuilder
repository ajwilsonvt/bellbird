json.array!(@alarms) do |alarm|
  json.extract! alarm, :id, :content
  json.url alarm_url(alarm, format: :json)
end
