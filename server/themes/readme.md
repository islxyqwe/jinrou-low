```name```
- 主题的名称，String。

```opening```
- 主题的开场白，String。将在「第1天的夜晚到来了。」的下一行显示

```skin_tip```
- String。玩家加入游戏时，会弹出帮助玩家掌握自己是谁的弹窗，```skin_tip```是该弹窗的标题，例如「学生证」、「身份证」、「驾照」等等。

```vote```, ```sunrise```, ```sunset```, ```icon```, ```background_color```, ```color```
- 尚未制作相关代码...

```lockable```
- Boolean。如果你希望这个主题不得设置密码，任何人都能加入，则设置为```false```，默认为```false```。

```isAvailable```
- 函数。可以更详细地设置某个主题在什么时间内有效。

```skins```
- JSON, key是各个人物的罗马字名，只允许半角英数字和下划线，数字和下划线不允许是首位，不得重复。

```skins.some_character```
- JSON

```skins.some_character.avatar```
- 人物头像网址。可以是网址字符串，也可以是网址字符串的数组。如果是数组，每次这个人物加入游戏，会从中随机一个作为头像。注意：百度，QQ空间，Pixiv等等很多图片网站都禁止外部链接引用。图床目前推荐用新浪微博相册。

- 头像尺寸为48×48像素，超过或者小于48×48的，会强行压缩拉伸到48×48。如果头像长宽比不是1:1，还会发生变形。

```skins.some_character.name```
- 人物名称。必填，String。

```skins.some_character.prize```
- 人物登场时的称号。可以是字符串，也可以是字符串的数组。如果是数组，每次这个人物加入游戏，会从中随机一个作为称号。

- 称号可以是空字符串。如果称号是空字符串，等价于玩家以未设置称号的状态加入游戏。

- 需要注意的是，如果人物头像网址和人物登场时的称号都是数组，这个人物加入游戏时，头像和称号是分别随机的，不发生联系。

- 如果希望不同的头像对应特定的称号，可以重复加入```skins.some_character.name```相同，```skins.some_character.avatar```和```skins.some_character.prize```不同的```skins.some_character```。
