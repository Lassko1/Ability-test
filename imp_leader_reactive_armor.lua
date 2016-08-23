function ReactiveArmor( event )
    local caster = event.caster
    local ability = event.ability
    local modifierName = "modifier_imp_leader_reactive_armor"
    local duration = ability:GetSpecialValueFor("duration")
    local maxstacks = ability:GetSpecialValueFor("max_stacks")

    -- Applying refreshes the modifier
    ability:ApplyDataDrivenModifier(caster, caster, modifierName, {duration=duration})

    local stackCount = caster:GetModifierStackCount(modifierName, caster) or 0
    stackCount = stackCount == maxstacks and maxstacks or (stackCount + 1)

    Timers:CreateTimer( duartion, function() stackCount = stackCount - 1 end)


    caster:SetModifierStackCount(modifierName, caster, stackCount)        
end

--function ReduceArmor (event)

--stackCount = stackCount - 1 

--end
