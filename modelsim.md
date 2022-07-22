# Modelsim 仿真步骤
1. 这里用 3-8 译码器为例
2. 启动 modelsim ，File &rarr; New &rarr; Project ,建立工程
    - ![1](doc_imgs/1.png)
3. 保存新建工程
    - ![2](doc_imgs/2.png)
4. 添加项目到新建仓库中，这里选择 Add Existing File
    - ![3](doc_imgs/3.png)
5. 选择编译好的文件。这里需要加载 .v 文件，以及 testbench 文件，一次可以加载多个文件的。
    - ![4](doc_imgs/4.png)
    - ![5](doc_imgs/5.png)
6. 在 `Project` 选项卡中显示刚才加载的文件，此时 Status 状态栏显示 ? ，因为我们现在还没有对其进行编译.
    - ![6](doc_imgs/6.png)
7. 选择菜单栏 Complie 进行全编译
    - ![7](doc_imgs/7.png)
8. 编译完成之后，最下面的命令行会显示 no errors 。此时，最上面的程序状态还是 ？ ，用鼠标单击最下面的命令行，可以看到我们上面的程序状态显示 &radic; .说明已经可以编译通过，可以进行仿真了
    - ![8](doc_imgs/8.png)
9. 打开 Library 选项卡中的 work 库，这个库是我们新建的，不懂得可以看步骤三，找到我们加载的两个文件。选中 tb 文件，右击选择 Simulate 准备仿真
    - ![9](doc_imgs/9.png)
10. 选择tb文件，右击选择 Add to &rarr; Wave &rarr; All items in region 
    - ![10](doc_imgs/10.png)
11. 设置仿真时间，我们这里设置10ms
    - ![11](doc_imgs/11.png)
12. 在最下面的命令行窗口输 `run` ，或者选中 Simulate &rarr; Run-All 进行仿真
    - ![12](doc_imgs/12.png)
13. 得到仿真结果
    - ![13](doc_imgs/13.png)