# skill-again-in-shop

Always stock **Skill Again** (item **306**, Special) in Frostbuy after every shop open restock. Needed so skill respecs (Wichita / Spellblade testing) stay available even after a spent Skill Again is still owned.

| Vanilla | This mod |
| --- | --- |
| Stock 306 only if `Ｉ有無(306,0)==0` (not owned) | After `Ｔアイテム屋`, stock 306 if shop does not already have one |

## API

```lua
rq.shop.install()
rq.shop.on_stock(function()
  if not rq.shop.in_stock(306) then
    rq.shop.stock(306)  -- Ｔアイテム屋／入荷品
  end
end)
```

`stock` is a no-op when a 306 is already existence 6 (store product).

## Needs

1. Fork with `rq.shop.*` (install + on_stock + in_stock + stock)
2. `rqmod\apply.ps1` → Magnum Mods only

Local-only git. No remote.

## Test

Clear a dungeon → hub → Frostbuy → Special / Skill Again is listed even if you already own a spent one. Log: `[skill-again-in-shop] stocked Skill Again …` on first restock of a visit when missing.
