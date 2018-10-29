# Sample-Login-Register

Although I can communicate and read literature in English, I am afraid of the ambiguity in the expression of professional skills, 
so I will use Chinese to express.

正如你所见，我按照此流程图做了一个关于登录与注册的demo。但是并未全部做完，图中红框的部分我不大明白需求，也就没做下去了。在做此demo之前我并未接触过beego，
在这段时间里我一边熟悉beego，一边完成demo。由于自己也有工作和别的事情要做，所以每天只能抽出一些时间来完成它。总共花了4天，大概20个小时。

![Image text](https://github.com/RobinLG/Sample-Register-Login/blob/master/img/user%20interaction%20logic%20ver.02.png)

###  问题与解决方案
在我看来，这是一个网站的简易注册与登录的流程。当我看到这个挑战的时候我去查看了关于beego的简介，觉得是个挺好用的框架，将程序做到的很好的解耦，尽管没有使用过，
但是自认为学习能力还不错的我准备挑战一下，所以整个demo用的就是 beego + mysql。之所以使用mysql，是因为是我平常使用最多的关系型数据库，因为在此demo中，
表之间还是存在着外键联系（尽管在demo中没有展现出来，但是我还是使用了mysql）。前端我用了layui的模板。项目中并没有加入区块链相关的内容，仅为传统项目工程的项目。

![Image text](https://github.com/RobinLG/Sample-Register-Login/blob/master/img/table.jpg)

###  技术选择
首先从两个小红旗标注的地方说起。关于SMS部分，首先我看到短信代发的业务后，就想到在阿里云找相关的服务，我关注了关于防止骚扰短信的部分，阿里云采用了每天
限制同一号码的发送短信的条数，来防止发送垃圾短信。设置也相对较为简单，阿里云的用户控制台有图形界面，省去了编程的功夫，使用阿里云的接口，他们官网也给出了
相关文档介绍，所以我选了它。输入代码注释中提示正确的参数，亲身实践可以完成短信验证。但是，你要有阿里云的账号。当然，最好的方法并不是这个，是图形验证码
（相关技术文档：该仓库下的动态短信验证码安全防护方案）。

其次，关于通过邮箱发送激活码部分。首先你得登录发件人(以我的邮箱为例)的邮箱，开启SMTP，然后你会获得授权码，这个授权码就是需要填入代码里面的参数。

![Image text](https://github.com/RobinLG/Sample-Register-Login/blob/master/img/1.png)

当生成链接发送时程序会往数据库存入一个经过md5加密用户名和随机数生成的code，并加在发送给收件人的链接上，当用户在邮件中请求链接，从连接获取code会与数据库里的code进行匹配，匹配成功则允许修改密码。在设计的时候可能存在小缺陷，该随机值的熵并不足够，这里只是个伪随机数。不适合用于商业的生产环境

![Image text](

