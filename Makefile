# Setup environment variables
sinclude .env
export $(shell [ -f .env ] && sed 's/=.*//' .env)

# ./node_modules/.bin on the PATH
export PATH := ./node_modules/.bin:$(PATH)

deploy:
	@serverless deploy --verbose --region us-east-1 --stage prod