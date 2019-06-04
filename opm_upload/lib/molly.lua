local exports = {
    version = "1.0.0" -- 让 opm 自动识别入口文件和版本号
}

function exports.add(x, y)
    return x + y
end

return exports
