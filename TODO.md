# TODO

Create a new Gem `qbwc-multi-tenant` that adds multi-tenant compatability to the official `qbwc` Gem.

Should work with `multi-tenant` rails gem, but not require it. If there is a `current_tenant`, use that.

Should have migrations and a generator for adding `tenant_id` to the sessions and jobs table.

Should extend `pending_jobs`, `clear_jobs`, etc to require a tenant.

Should provide a method for multi-tenant authentication.
