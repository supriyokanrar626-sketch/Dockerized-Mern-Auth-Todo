# FROM node:20-alpine

# WORKDIR /app

# COPY package*.json ./
# RUN npm ci

# COPY . . 
FROM node:20-alpine

WORKDIR /app

COPY package*.json ./

# Increase npm timeout and retry settings
RUN npm config set fetch-retries 5 \
    && npm config set fetch-retry-maxtimeout 120000 \
    && npm config set fetch-timeout 300000 \
    && npm ci

COPY . .

EXPOSE 5173

CMD ["npm", "run", "dev", "--", "--host"]