docker-up:
	docker-compose -f docker-compose.yml up -d

migrate:
	pnpm prisma migrate dev --name $(state)

prisma-push:
	npx prisma db push --schema=./prisma/schema.prisma