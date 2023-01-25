[![Docker](https://github.com/declue/docker_ubuntu/actions/workflows/docker-publish.yml/badge.svg?branch=main)](https://github.com/declue/docker_ubuntu/actions/workflows/docker-publish.yml)

한국에서 사용하기 적합하게 수정된 ubuntu 기반의 Docker Container 입니다. 
다음의 버전들을 지원합니다.

- 16.04 (ghcr.io/declue/docker_ubuntu:16.04)
- 18.04 (ghcr.io/declue/docker_ubuntu:18.04)
- 20.04 (ghcr.io/declue/docker_ubuntu:20.04)
- 22.04 (ghcr.io/declue/docker_ubuntu:22.04)

배포된 이미지에 대한 pakcage 정보는 다음과 같습니다.
- https://github.com/declue/docker_ubuntu/pkgs/container/docker_ubuntu



# 주요 변경 사항
- Locale을 한국으로 변경
- Encoding을 ko_KR.UTF-8로 변경
- Nanum 폰트 적용
- Timezone을 한국으로 변경

# 기본 설치 프로그램
- vim
- net-tools
- ip-utils
- wget
- curl
- apt-utils
- language-pack-ko
- tree
- jq

자세한 사항은 Dockerfile을 참조하세요.
