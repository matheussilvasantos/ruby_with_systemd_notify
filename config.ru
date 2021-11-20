require "sd_notify"

File.write("/tmp/ruby_with_systemd_notify.pid", Process.pid)

SdNotify.ready

run ->(_) { [200, {}, "hello friend, hello friend"] }
