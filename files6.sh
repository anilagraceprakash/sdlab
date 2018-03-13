while true
do
echo "Select any one"
echo "1.Display the contents of the file in terminal" 
echo "2.Display first part of the file "
echo "3.Display last part of the file"
echo "4.Redirect the contents of files f1 and f2 to f3"
echo "5.Create file f4 and move contents of f3 to f4" 
echo "6.Check if a string is present in any of the files"
echo "7.Display a file as pages(more)"
echo "8.Display a file as pages(less)" 
echo "9.Copy contents of one file to another" 
echo "10.Count number of Lines, Words, Characters in a file"
echo "11.Search for a filename"
echo "12.Quit"
read num
case $num
 in
 1) echo "Select the file"
 	echo "1.f1  2.f2  3.f3"
 	read c
 	case $c
 	in
 	1) cat f1;;
 	2) cat f2;;
 	3) cat f3;; 
 	esac
 	;;
 2) echo "Head of file 1"
    head f1;;

 3) echo "Tail of file 1"
    tail f1;;

 4) cat f1 f2 f3;;
 
 5) mv f3 f4;;
 	
 6) echo "Enter the string to be searched"
     read srch
	echo "Select the file"
 	echo "1.f1  2.f2  3.f4"
 	read c
 	case $c
 	in
 	1) grep $srch f1;;
 	2) grep $srch f2;;
 	3) grep $srch f4;; 
 esac
 ;;
 7) echo "Select the file"
 	echo "1.f1  2.f2  3.f4"
 	read c
 	case $c
 	in
 	1) more f1;;
 	2) more f2;;
 	3) more f4;;
 esac;;
  8) echo "Select the file"
 	echo "1.f1  2.f2  3.f4"
 	read c
 	case $c
 	in
 	1) less f1;;
 	2) less f2;;
 	3) less f4;;
 esac;;
 9) cp f5 f6;;
 10)echo "Select the file"
 	echo "1.f1  2.f2  3.f4"
 	read c
        echo "line word character file"
 	case $c
 	in
 	1) wc f1;;
 	2) wc f2;;
 	3) wc f4;;
 esac;;
 11)echo "Select the file"
 	echo "1.f1  2.f2  3.f4"
 	read c
 	case $c
 	in
 	1) find f1;;
 	2) find f2;;
 	3) find f4;;
 esac;;
 
 12)break;;
 esac
 done
 
