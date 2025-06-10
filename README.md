# 🍌 BANANA-MCP

**Leonardo da Vinci 2075 Edition**

*All-in-One Model Context Protocol Server Package*

---

## 🎨 **개요**

BANANA-MCP는 레오나르도 다 빈치가 2075년에 살았다면 만들었을 법한 완벽한 MCP(Model Context Protocol) 서버 통합 패키지입니다. 14개의 강력한 MCP 서버들을 하나의 Docker 컨테이너로 패키징하여 Claude와 함께 사용할 수 있습니다.

## 🚀 **주요 특징**

- ✨ **14개 MCP 서버 통합**: YouTube, GitHub, Figma, MySQL, SQLite 등
- 🐳 **Docker 완전 지원**: 원클릭 설치 및 실행
- 📊 **실시간 모니터링**: Grafana + Prometheus 대시보드
- 🔒 **보안 강화**: SSL, 인증, 권한 관리
- 🌐 **웹 대시보드**: 직관적인 관리 인터페이스
- ⚡ **고성능**: Redis 캐싱 및 최적화
- 🔄 **자동 복구**: 헬스체크 및 자동 재시작

## 📦 **포함된 MCP 서버들**

| 서버 | 기능 | 포트 |
|------|------|------|
| 🍌 **BANANA-MCP Main** | 중앙 허브 | 8080 |
| 📺 **YouTube** | 영상 검색/분석 | 8081 |
| 🐙 **GitHub** | 코드 저장소 관리 | 8082 |
| 🎨 **Figma** | 디자인 도구 연동 | 8083 |
| 📚 **Context7** | 라이브러리 문서 | 8084 |
| 🗃️ **SQLite** | 경량 데이터베이스 | - |
| 🛢️ **MySQL** | 고성능 데이터베이스 | 3306 |
| 💾 **Memory** | 지식 그래프 | - |
| 🔍 **Brave Search** | 웹 검색 | - |
| 🧠 **Sequential Thinking** | 체계적 사고 | - |
| 📁 **Filesystem** | 파일 관리 | - |
| ✏️ **Edit File Lines** | 파일 편집 | - |
| 📋 **Task Manager** | 작업 관리 | - |
| 🎭 **Playwright** | 브라우저 자동화 | - |

## 🛠️ **빠른 설치**

```bash
# 1. 저장소 클론
git clone https://github.com/lofibrainwav/banana-mcp.git
cd banana-mcp

# 2. 환경 변수 설정
cp .env.template .env
# .env 파일에서 API 키들을 실제 값으로 변경

# 3. 자동 설치 실행
chmod +x scripts/setup.sh
./scripts/setup.sh

# 4. 서비스 시작
docker-compose up -d
```

## 📊 **대시보드 접속**

- 🍌 **메인 대시보드**: http://localhost:8080
- 📊 **Grafana**: http://localhost:3000 (admin/banana2075)
- 🔥 **Prometheus**: http://localhost:9090

## 🎯 **Claude Desktop 연동**

설치 후 Claude Desktop 설정을 자동으로 업데이트하여 모든 MCP 서버에 즉시 접근할 수 있습니다.

---

**🍌 BANANA-MCP가 당신의 AI 여정을 더욱 달콤하게 만들어드립니다!**

*Made with ❤️ by AI da Vinci Engineer 2075*
