# Skill Again in Shop

**Skill Again** is always for sale in Frostbuy.

<img width="480" height="162" alt="image" src="https://github.com/user-attachments/assets/7b834dd8-26b6-4d43-bdea-0b68f5c4c9ee" />

## What it changes

- The game stocks Skill Again (Special) only while you own none, so a spent one you still carry keeps
  it off the shelf. With this mod, every restock adds one when the shop does not already have it.
- Handy for trying skill builds again and again.

## Keys and settings

None.

## Saves

The Skill Again items you buy are ordinary game items and stay in the save.

## Works with

Binoculars and other mods that add shop stock.

## Install

Needs [RQ MOD](https://github.com/RQ-Modding/RQ-Mod) with loader **1.15.0** or newer. Extract the
release zip into the game's `mods` folder, so that you have `mods/skill-again-in-shop/mod.json`.

## How it works

```lua
rq.shop.install()
rq.shop.on_stock(function()
  if not rq.shop.in_stock(rq.ids.item.SKILL_AGAIN) then  -- 306
    rq.shop.stock(rq.ids.item.SKILL_AGAIN)
  end
end)
```

`on_stock` runs after the game's restock (`Ｔアイテム屋`).

## License

MIT, see [LICENSE](LICENSE).
