help: ## 帮助文件
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {sub("\\\\n",sprintf("\n%22c"," "), $$2);printf "\033[36m%-40s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

NAMESPACE=aliyun-fc
REPO=fc-open-webui

# https://github.com/open-webui/open-webui/pkgs/container/open-webui
TAG="git-98ec38a" 

.PHONY: pull
pull:
	@docker pull ghcr.io/open-webui/open-webui:${TAG}

tag_and_push: pull
	@if [ -z "$${REGION}" ]; then \
		echo "REGION can not be empty"; \
	else \
		docker tag ghcr.io/open-webui/open-webui:${TAG} registry.$${REGION}.aliyuncs.com/${NAMESPACE}/${REPO}:${TAG} && \
		docker push registry.$${REGION}.aliyuncs.com/${NAMESPACE}/${REPO}:${TAG}; \
	fi

.PHONY: push
push: push-hangzhou push-shanghai ## 推送镜像到所有地区

.PHONY: push-hangzhou
push-hangzhou: pull ## 推送镜像到杭州
	@REGION=cn-hangzhou make tag_and_push 

.PHONY: push-shanghai
push-shanghai: pull ## 推送镜像到上海
	@REGION=cn-shanghai make tag_and_push 

.PHONY: registry
registry: push ## 发布到 Serverless Devs Registry
	s registry publish