-- Index creation to improve performance

create index idx_claims_claimdate on claims(claimdate);

-- Roles creation
create role ClaimsAnalyst login password 'pass123';

create role ClaimsManager login password 'pass456';

-- Granting permissions to roles
grant select on claims, policies to ClaimsAnalyst;

grant select, insert, update, delete on claims, policies, policytypes to ClaimsManager;