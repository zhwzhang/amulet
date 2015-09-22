function am.camera2d(width, height, pos)
    local node = am.bind{P = math.ortho(-width/2, width/2, -height/2, height/2), MV = mat4(1)}
    function node:get_position()
        return -self.MV[4].xy
    end
    function node:set_position(pos)
        self.MV = mat4(
            1, 0, 0, 0,
            0, 1, 0, 0,
            0, 0, 1, 0,
            -pos, 0, 1)
    end
    node.position = pos
    node:tag"camera2d"
    return node
end
