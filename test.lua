function waitcolor(...)
	usleep(500000)
	local tab = {...}
	local cont = tab[#tab - 1];
	local value = tab[#tab]
	local j = 1
	repeat
		local i = 1;
		repeat
			local x = tab[i]
			local y = tab[i+1]
			local color = tab[i+2]
			i = i + 3
			if (getColor(x, y) == color) then
				usleep(500000)
				return x, y
			end
		until(i == #tab - 1);
		j = j + 1
		if (j == cont) then
			return 0
		end
		usleep(500000)
	until(j == cont)
end
