examp:

cd 

dp_arr=()

f3dparr_ --_file .store/tst.lst2 --_del : --_dparr dp_arr

for item_str in $(f2e .store/tst.lst2); do
    echo -e "${GREEN}\$item_str = $item_str${NORMAL}" #print variable
done