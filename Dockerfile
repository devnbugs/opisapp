FROM node:20-alpine AS base
WORKDIR /app
COPY package*.json ./
RUN corepack enable && pnpm install --frozen-lockfile
COPY . .
RUN pnpm build
EXPOSE 3000
CMD ["pnpm", "start"]
