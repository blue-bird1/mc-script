import mods.dropt.Dropt;

// 创建一个名称为 "leaf_drops" 的 RuleList 对象
Dropt.list("leaf_drops")

  // 为父 RuleList 对象添加规则
  .add(

      // 创建一个 Rule 对象
      Dropt.rule()

      // 为父 Rule 对象添加匹配破坏 "minecraft:leaves:*" 的条件 (使用 META 通配符匹配所有种类的树叶)
      .matchBlocks(["minecraft:leaves:*","forestry:leaves:*"])

      // 为父 Rule 对象添加掉落
      .addDrop(

          // 创建一个 Drop 对象
          Dropt.drop()
      )
  );