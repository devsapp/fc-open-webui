
> 注：当前项目为 Serverless Devs 应用，由于应用中会存在需要初始化才可运行的变量（例如应用部署地区、函数名等等），所以**不推荐**直接 Clone 本仓库到本地进行部署或直接复制 s.yaml 使用，**强烈推荐**通过 `s init ${模版名称}` 的方法或应用中心进行初始化，详情可参考[部署 & 体验](#部署--体验) 。

# fc-open-webui 帮助文档
<p align="center" class="flex justify-center">
    <a href="https://www.serverless-devs.com" class="ml-1">
    <img src="http://editor.devsapp.cn/icon?package=fc-open-webui&type=packageType">
  </a>
  <a href="http://www.devsapp.cn/details.html?name=fc-open-webui" class="ml-1">
    <img src="http://editor.devsapp.cn/icon?package=fc-open-webui&type=packageVersion">
  </a>
  <a href="http://www.devsapp.cn/details.html?name=fc-open-webui" class="ml-1">
    <img src="http://editor.devsapp.cn/icon?package=fc-open-webui&type=packageDownload">
  </a>
</p>

<description>

使用 serverless devs 将 Open WebUI 部署到阿里云函数计算上

</description>

<codeUrl>



</codeUrl>
<preview>



</preview>


## 前期准备

使用该项目，您需要有开通以下服务并拥有对应权限：

<service>



| 服务/业务 |  权限  | 相关文档 |
| --- |  --- | --- |
| 函数计算 |  创建函数 | [帮助文档](https://help.aliyun.com/product/2508973.html) [计费文档](https://help.aliyun.com/document_detail/2512928.html) |

</service>

<remark>



</remark>

<disclaimers>



</disclaimers>

## 部署 & 体验

<appcenter>
   
- :fire: 通过 [Serverless 应用中心](https://fcnext.console.aliyun.com/applications/create?template=fc-open-webui) ，
  [![Deploy with Severless Devs](https://img.alicdn.com/imgextra/i1/O1CN01w5RFbX1v45s8TIXPz_!!6000000006118-55-tps-95-28.svg)](https://fcnext.console.aliyun.com/applications/create?template=fc-open-webui) 该应用。
   
</appcenter>
<deploy>
    
- 通过 [Serverless Devs Cli](https://www.serverless-devs.com/serverless-devs/install) 进行部署：
  - [安装 Serverless Devs Cli 开发者工具](https://www.serverless-devs.com/serverless-devs/install) ，并进行[授权信息配置](https://docs.serverless-devs.com/fc/config) ；
  - 初始化项目：`s init fc-open-webui -d fc-open-webui`
  - 进入项目，并进行项目部署：`cd fc-open-webui && s deploy -y`
   
</deploy>

## 案例介绍

<appdetail id="flushContent">

本案例将 [Open WebUI](https://github.com/open-webui/open-webui)，这一开源 AIGC 前端项目快速创建并部署到阿里云函数计算 FC。快速体验 API 集成、文本会话等多种功能。

Open WebUI 是一个可扩展、功能丰富且用户友好的自托管 WebUI，完全离线操作。它支持各种 LLM 运行程序，包括 Ollama 和兼容 OpenAI 的 API。

人工智能技术对社会具有变革潜力，然而由于其存在一定的门槛，强大的 AI 无法为所有人提供便利。基于这一认识，Open WebUI 致力于通过开发一款易于安装、功能丰富的 WebUI。这样一来，任何具备基础技术技能的人都能够利用人工智能的力量，提升自己的工作效率。

</appdetail>

## 使用流程

<usedetail id="flushContent">

进入页面，选择合适的模型进行会话。

![](https://img.alicdn.com/imgextra/i1/O1CN01ScKu5W1HAtKnZ2wmI_!!6000000000718-0-tps-833-168.jpg)


完整的使用说明见 “https://docs.openwebui.com/category/-tutorial”

</usedetail>

## 注意事项

<matters id="flushContent">

该项目的代码来自开源项目 [Open WebUI](https://github.com/open-webui/open-webui)，使用开源项目官方提供的 Docker 镜像。函数计算仅做代码部署，如果您在使用时存在疑问，请前往开源社区寻求帮助。

</matters>


<devgroup>


## 开发者社区

您如果有关于错误的反馈或者未来的期待，您可以在 [Serverless Devs repo Issues](https://github.com/serverless-devs/serverless-devs/issues) 中进行反馈和交流。如果您想要加入我们的讨论组或者了解 FC 组件的最新动态，您可以通过以下渠道进行：

<p align="center">  

| <img src="https://serverless-article-picture.oss-cn-hangzhou.aliyuncs.com/1635407298906_20211028074819117230.png" width="130px" > | <img src="https://serverless-article-picture.oss-cn-hangzhou.aliyuncs.com/1635407044136_20211028074404326599.png" width="130px" > | <img src="https://serverless-article-picture.oss-cn-hangzhou.aliyuncs.com/1635407252200_20211028074732517533.png" width="130px" > |
| --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| <center>微信公众号：`serverless`</center>                                                                                         | <center>微信小助手：`xiaojiangwh`</center>                                                                                        | <center>钉钉交流群：`33947367`</center>                                                                                           |
</p>
</devgroup>
