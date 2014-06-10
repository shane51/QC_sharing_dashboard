json.array!(@vms) do |vm|
  json.extract! vm, :id, :ip, :description, :user, :period
  json.url vm_url(vm, format: :json)
end
