-- Copyright (C) 2026 ilxp <https://github.com/ilxp>

rt_log = SimpleForm("soup")
rt_log.reset = false
rt_log.submit = false
rt_log:append(Template("soup/rt_log"))

return rt_log
