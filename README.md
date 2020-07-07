# vscode-spring-dockerfile

docker remote container로 java8 환경의 개발을 하려고 하면 잘 될 것 같은데 잘 안 됨.
예를 들어, 한국 미러가 설정 안돼서 느리다던지 서울 타임존이 설정 안 되어 있다던지 등 문제가 생김.

특히, 우리와 같이 SVN 환경에서 소스관리를 하고
npm을 사용하는 프로젝트가 있으며
tomcat8.5을 로컬에서 구동하여 디버깅을 해야하는 업무환경에서는 dockerfile을 손 봐줘야 함.

몇 번의 시행착오 끝에 만든 파일들 공유.

# 파일 설명
.devcontainer/Dockerfile (핵심 파일. 도커 컨테이너 빌드 시 필요한 명령들을 모아놈)

.devcontainer/devcontainer.json (필요한 플러그인 설치 및 경로 설정 등)

init.sh (SVN 확장의 버그 때문에 시 VS Code 를 실행 시 마다 커멧을 해줘야 하는데, 좀 더 편하게 하기 위해서 쉘 스크립으를 짰음. 실행 권한 필요)