-- p_x, p_y, p_z: current voxel coordinates
-- b_x, b_y, b_z: box half-extents (distance from center to face)
function sdBox(p_x, p_y, p_z, b_x, b_y, b_z)
    -- Calculate q (absolute distance from center minus half-extents)
    local q_x = abs(p_x) - b_x
    local q_y = abs(p_y) - b_y
    local q_z = abs(p_z) - b_z

    -- External distance: distance to box if point is outside
    -- Max(q, 0) components
    local mq_x = max(q_x, 0.0)
    local mq_y = max(q_y, 0.0)
    local mq_z = max(q_z, 0.0)
    local externalDist = sqrt(mq_x*mq_x + mq_y*mq_y + mq_z*mq_z)

    -- Internal distance: distance to nearest face if point is inside
    local internalDist = min(max(q_x, max(q_y, q_z)), 0.0)

    return externalDist + internalDist
end

return sdBox(x,y+2,z,4,3,3)==0 and GREY
