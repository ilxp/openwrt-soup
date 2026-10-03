-- Copyright (C) 2026 ilxp <https://github.com/ilxp>
fw_log = SimpleForm("soup")
fw_log.reset = false
fw_log.submit = false
fw_log:append(Template("soup/fw_log"))

return fw_log