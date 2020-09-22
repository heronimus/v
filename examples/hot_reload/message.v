module main

// Build this example with `v -live message.v`
import time
import live

[live]
fn print_message() {
	info := live.info()
	println('OK reloads: ${info.reloads_ok:4d} | Total reloads: ${info.reloads:4d} | Hello! Modify this message while the program is running.')
}

fn main() {
	for {
		print_message()
		time.sleep_ms(500)
	}
}
