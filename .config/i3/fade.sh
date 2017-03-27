fade=1
if [ $fade ]; then
	window_list_id=$(xprop -root | grep "_NET_CLIENT_LIST(WINDOW)" | cut -c 39- | tr -d ",")
	for id in $window_list_id; do
		$(transset-df --id $id --toggle 0 1)
	done
	fade=0
fi