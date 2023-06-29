# Sample data for Apartment
# Apartmentt.create(number: 101)
# Apartmentt.create(number: 102)
# Apartmentt.create(number: 103)

# # Sample data for Tenant
# Tenant.create(name: "John Doe", age: 25)
# Tenant.create(name: "Jane Smith", age: 30)
# Tenant.create(name: "David Johnson", age: 22)
puts "seeding"
#Sample data for Lease
Lease.create(rent: 1000, apartment_id: 1, tenant_id: 1)
Lease.create(rent: 1200, apartment_id: 2, tenant_id: 2)
Lease.create(rent: 900, apartment_id: 3, tenant_id: 3)

puts "done"

