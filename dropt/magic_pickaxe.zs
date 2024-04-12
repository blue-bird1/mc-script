import mods.dropt.Dropt;

Dropt.list("list_name")

  .add(Dropt.rule()
      .matchHarvester(Dropt.harvester()
          .type("PLAYER")
          .mainHand([<contenttweaker:magic_stone_pickaxe>])
      )
      .addDrop(Dropt.drop())
  );