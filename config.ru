require_relative "system/boot"
require_relative "system/web"

run Web.freeze.app
