-- Always stock Skill Again (item 306) in Frostbuy after vanilla restock.
-- Engine wraps Ｔアイテム屋 tail; policy is Lua.

local SKILL_AGAIN = rq.ids.item.SKILL_AGAIN

rq.log(string.format("Skill Again always in Frostbuy (item %d)", SKILL_AGAIN))

if not rq.shop.install() then
  error("skill-again-in-shop: rq.shop.install failed (see logs/rqmod.log)")
end

rq.shop.on_stock(function()
  if rq.shop.in_stock(SKILL_AGAIN) then
    return
  end
  local ii = rq.shop.stock(SKILL_AGAIN)
  if ii and ii ~= 0 then
    rq.log(string.format("stocked Skill Again (ii=%d)", ii))
  else
    rq.log("Skill Again stock skipped (already in shop or generate failed)")
  end
end)
