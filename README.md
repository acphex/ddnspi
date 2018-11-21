# ddnspi
调用DNSpod API接口实现动态域名解析
# 方法
## 注册DNSpod账号，添加域名解析
略
## 设置Token
方法详见：[如何使用 Token 来调用 API](https://support.dnspod.cn/Kb/showarticle/tsid/227/)
注意事项：Token的完整形式为"ID,Token"
## 通过API获取domain_id和record_id
## 添加定时任务
```
crontab -e
*/15 * * * * /home/ddnspi/getip.sh
```
每15分钟执行一次脚本
