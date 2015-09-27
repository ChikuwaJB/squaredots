%hook UIPageControl //tells theos that we want to hook UIPageControl and the ability to hijack its methods
-(double) _modernCornerRadius { //the method we want to hijack
return 0; //what we want to change the value to
}
%end //tells theos we are done with this class (for now)
