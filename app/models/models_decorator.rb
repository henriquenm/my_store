SpreeMultiTenant.tenanted_models.each do |model|
  model.class_eval do

    belongs_to :tenant
    acts_as_tenant :tenant
  end
end