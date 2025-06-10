# 🍌 BANANA-MCP: All-in-One MCP Server Package
# Created by: AI da Vinci Engineer 2075
# Version: 1.0.0

FROM node:20-bullseye-slim

# 시스템 패키지 설치
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-venv \
    git \
    curl \
    wget \
    bash \
    sqlite3 \
    mysql-client \
    && rm -rf /var/lib/apt/lists/*

# 작업 디렉토리 설정
WORKDIR /app

# Python 가상환경 생성
RUN python3 -m venv /app/venv
ENV PATH="/app/venv/bin:$PATH"

# Node.js 글로벌 패키지 설치
RUN npm install -g npm@latest

# MCP 서버들 설치
RUN npm install -g \
    @modelcontextprotocol/server-filesystem \
    @modelcontextprotocol/server-memory \
    @modelcontextprotocol/server-sequential-thinking \
    @modelcontextprotocol/server-brave-search \
    @upstash/context7-mcp \
    figma-mcp \
    @benborla29/mcp-server-mysql \
    @playwright/mcp \
    mcp-shrimp-task-manager

# Python MCP 서버들 설치
RUN pip install mcp-server-sqlite

# Playwright 브라우저 설치
RUN npx playwright install chromium --with-deps

# 애플리케이션 파일들 복사
COPY package.json ./
COPY config/ ./config/
COPY scripts/ ./scripts/

# Node.js 의존성 설치
RUN npm install

# 실행 권한 설정
RUN chmod +x /app/scripts/*.sh

# 데이터 디렉토리 생성
RUN mkdir -p /app/data/sqlite /app/data/memory /app/data/logs

# 환경 변수 설정
ENV NODE_ENV=production
ENV MCP_HOME=/app
ENV MCP_DATA_DIR=/app/data
ENV PATH="/app/scripts:$PATH"

# 포트 노출 (HTTP MCP 서버용)
EXPOSE 8080 8081 8082 8083 8084

# 헬스체크 설정
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
    CMD node /app/scripts/healthcheck.js

# 시작 스크립트 실행
CMD ["/app/scripts/start-banana-mcp.sh"]
