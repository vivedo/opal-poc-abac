package app.abac

default allow = false

allow {
	input.resource.type == "pool"
	input.action == "create_transaction"
	user_is_admin
}

allow {
	input.resource.type == "pool"
	input.action == "create_transaction"
	user_owns_pool
}

user_is_admin {
	data.users[input.subject.id].role == "admin"
}

user_owns_pool {
	data.pools[input.resource.id].owner_id == input.subject.id
}