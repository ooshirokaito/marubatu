ary = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
i = 0

puts ary[0] + "|" + ary[1] + "|" + ary[2]
puts ary[3] + "|" + ary[4] + "|" + ary[5]
puts ary[6] + "|" + ary[7] + "|" + ary[8]

until (ary[0..2].uniq.count == 1) || (ary[3..5].uniq.count == 1) || (ary[6..8].uniq.count == 1) ||
	  ([ary[0], ary[3], ary[6]].uniq.count == 1) || ([ary[1], ary[4], ary[7]].uniq.count == 1) || ([ary[2], ary[5], ary[8]].uniq.count == 1) ||
	  ([ary[0], ary[4], ary[8]].uniq.count == 1) || ([ary[2], ary[4], ary[6]].uniq.count == 1) || i == 9 do

	judge = true

	while judge do
		num = gets.to_i - 1
		if (num == 0) || (num == 1) || (num == 2) || (num == 3) || (num == 4) ||
		   (num == 5) || (num == 6) || (num == 7) || (num == 8)

			case (i % 2)
			when 0 then
				if (ary[num] != "◯") && (ary[num] != "×")
					ary[num] = "◯"
					judge = false
				else
					puts "そのマスはすでに埋まっています！！"
					puts ary[0] + "|" + ary[1] + "|" + ary[2]
					puts ary[3] + "|" + ary[4] + "|" + ary[5]
					puts ary[6] + "|" + ary[7] + "|" + ary[8]
					judge = true
				end
			when 1 then
				if (ary[num] != "◯") && (ary[num] != "×")
					ary[num] = "×"
					judge = false
				else
					puts "そのマスはすでに埋まっています！！"
					puts ary[0] + "|" + ary[1] + "|" + ary[2]
					puts ary[3] + "|" + ary[4] + "|" + ary[5]
					puts ary[6] + "|" + ary[7] + "|" + ary[8]
					judge = true
				end
			end

		else
			puts "1から9の値を入力してください"
			puts ary[0] + "|" + ary[1] + "|" + ary[2]
			puts ary[3] + "|" + ary[4] + "|" + ary[5]
			puts ary[6] + "|" + ary[7] + "|" + ary[8]
			judge = true
		end
	end



	puts ary[0] + "|" + ary[1] + "|" + ary[2]
	puts ary[3] + "|" + ary[4] + "|" + ary[5]
	puts ary[6] + "|" + ary[7] + "|" + ary[8]

	i = i + 1

end

puts "ゲーム終了!!!"