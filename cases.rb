# encoding: UTF-8# encoding: UTF-8

cases = Hash.new
cases["bytecode_work"] = "haxe.bytecode -D WORK --no-output  -main Main  -neko .n --display Main.hx@199"
cases["bytecode"] = "haxe.bytecode --no-output  -main Main  -neko .n --display Main.hx@199"
cases["native_work"] = "haxe.native -D WORK --no-output  -main Main  -neko .n --display Main.hx@199"
cases["native"] = "haxe.native --no-output  -main Main  -neko .n --display Main.hx@199"

cases.each_pair {|k,v|
  puts "running #{k}"
  system "#{v} 2> #{k}.err > #{k}"
}

system "md5sum #{cases.keys.join(' ')} #{cases.keys.map {|v| "#{v}.err"}.join(' ')}"

cases.each_pair {|k,v|
  puts "==== result #{k} out"
  system "cat #{k}"
  puts "====             err"
  system "cat #{k}.err"
}
