	local combat = Combat()
	combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
	combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_THROWINGSTAR)

	local condition = Condition(CONDITION_PARALYZE)
	condition:setParameter(CONDITION_PARAM_TICKS, 10000)
	condition:setFormula(-0.25, 0, -0.35, 0)
	combat:addCondition(condition)

function onCastSpell(creature, var)
	return combat:execute(creature, var)
end
