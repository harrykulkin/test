# vscode-spring-dockerfile

docker remote container로 java8 환경의 개발을 하려고 하면 잘 될 것 같은데 잘 안 됨.
예를 들어, 한국 미러가 설정 안돼서 초기화가 느리다던지 서울 타임존이 설정 안 되어 있다던지 등 문제가 생김.

특히, 우리와 같이 SVN 환경에서 소스관리를 하고
npm을 사용하는 프로젝트가 있으며
tomcat8.5을 로컬에서 구동하여 디버깅을 해야하는 업무환경에서는 dockerfile을 손 봐줘야 함.

몇 번의 시행착오 끝에 만든 파일들 공유.