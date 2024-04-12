import mods.dropt.Dropt;

print("delete leaf_drops");
// 创建一个名称为 "leaf_drops" 的 RuleList 对象
Dropt.list("seed_drops")

  // 为父 RuleList 对象添加规则
  .add(

      // 创建一个 Rule 对象
      Dropt.rule()
      .matchBlocks(["minecraft:beetroots:*"])
      .matchDrops([<minecraft:beetroot_seeds>])
      .replaceStrategy("REPLACE_ITEMS")
      // replace to  null
      .addDrop(

          // 创建一个 Drop 对象
          Dropt.drop()
      )
  ).add(
     
      // 创建一个 Rule 对象
      Dropt.rule()
      .matchBlocks(["minecraft:nether_wart:*"])
      // replace to  null
      .addDrop(

          // 创建一个 Drop 对象
          Dropt.drop().items([<minecraft:nether_wart>])
      )
  ).add(
     
      // 创建一个 Rule 对象
      Dropt.rule()
      .matchBlocks(["minecraft:cocoa:*"])
      // replace to  null
      .addDrop(

          // 创建一个 Drop 对象
          Dropt.drop().items([<minecraft:dye:3>])
      )
  );
