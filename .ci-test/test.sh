set -e
echo "开始测试"
echo "pwd = `pwd`"
echo "这个自动化测试将对大括号匹配、及本地化文件中的英文双引号进行检测"
echo "如果检测报错，将打印出错的文件名，请对照自己在这个文件中的修改。同时报错的地方会打印一个行号，不一定准确，但可以作为一个参考。"
echo "如果你没改这个报错的文件，说明是之前的某个人的修改出了问题，在那之后的提交都会报错"
echo ""
echo ""
echo "如果检测脚本出了问题，可以删除仓库中的ci-test/test.sh这个文件，里面的\"python3 ci-test/Check.py\"这一行，临时关闭检测"
echo ""
echo ""
python3 .ci-test/Check.py
echo "测试结束"
