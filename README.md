## QLIrregularButtonDemo

> 不规则形状按钮点击

- 实现方式有两种
 - a. 自定义绘制按钮，然后判断 `pointInside` 时是否在其 `mask` 上.
 - b. 采用图片来实现按钮的展示，图片不可点击部分为透明色，然后判断 `pointInside` 时是否有色值。

> 此demo主要讲解第二种方式，第一种方法比较容易理解，请自行参考demo。

### 一、介绍

- 1. 图片都是矩形的，UI给我的不规则的按钮图片也是矩形的，只是不规则形状以外设置为了透明色而已。
- 2. 要保证只有图片按钮的不规则区域能响应触摸事件，而重叠区域又互相不影响。

### 二、原理

- 1. 判断此区域是否透明
- 2. 如果透明，不响应事件
- 3. 具体见 `SectorButton.m` 中的pointInside方法

### 三、使用

- 1.导入项目中的库<br>

    ```
    SectorButton.h/m
    UIImage+ColorAtPoint.h/m
    ```
    
- 2.将你的按钮继承自 `SectorButton` 或者 将IB中的按钮的class与 `SectorButton` 关联

---
# BY QiuFairy 