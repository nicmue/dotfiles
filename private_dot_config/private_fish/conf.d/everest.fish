abbr -a psql-local "PGPASSWORD='postgres' psql -h 'localhost' -p 5432 -d 'postgres' -U 'postgres'"
abbr -a pgdump-local "PGPASSWORD='postgres' pg_dump -h 'localhost' -p 5432 -d 'postgres' -U 'postgres'"
abbr -a pgrestore-local "PGPASSWORD='postgres' pg_restore -h 'localhost' -p 5432 -d 'postgres' -U 'postgres'"

abbr -a psql-appdev "PGPASSWORD='$(secrets .appdev.ro.pw)' psql -h 'tenantdb-8b68e473-5988-4c03-ab6c-633198385d6a.internal.everest-erp.com' -p 5432 -d 'tenant-8b68e473-5988-4c03-ab6c-633198385d6a' -U '$(secrets .appdev.ro.user)'"
abbr -a pgdump-appdev "PGPASSWORD='$(secrets .appdev.ro.pw)' pg_dump -h 'tenantdb-8b68e473-5988-4c03-ab6c-633198385d6a.internal.everest-erp.com' -p 5432 -d 'tenant-8b68e473-5988-4c03-ab6c-633198385d6a' -U '$(secrets .appdev.ro.user)'"

abbr -a aws-login-internal "aws sso login --profile everest-internal"

abbr -a aws-login-ecr "aws sso login --profile everest-ecr"
abbr -a aws-docker "aws ecr get-login-password --region us-east-1 --profile everest-ecr | docker login --username AWS --password-stdin 923621808594.dkr.ecr.us-east-1.amazonaws.com"
