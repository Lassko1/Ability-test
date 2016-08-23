imp_leader_reactive_armor = class({})

function modifier_imp_leader_reactive_armor:DeclareFunctions()
    local funcs = {
        MODIFIER_PROPERTY_PHYSICAL_ARMOR_BONUS,
        MODIFIER_PROPERTY_HEALTH_REGEN_CONSTANT,
       -- MODIFIER_EVENT_ON_ATTACKED,
    }
 
    return funcs
end

function modifier_imp_leader_reactive_armor:MODIFIER_PROPERTY_HEALTH_REGEN_CONSTANT(params)
    return 100;
end