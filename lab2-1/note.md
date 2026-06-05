1-120个残基的范围：

起始： 173
终止： 1170

命令修改为:

```bash
sed -n '173,1170p'model_01.pdb > homo_model.pdb
echo TER >> crystal_human_E-selectin.pdb
```

vim里搜索 `/CA    CA`,发现只有一行（2373行）

则追加命令为：

```bash
sed -n '2373,2373p'model_01.pdb >> homo_model.pdb
```
