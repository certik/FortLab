subroutine set_max_interchange_sort_size(x)
  integer, intent(in) :: x
  character(len=16) :: x_char
  if (x < 4) then
     write(x_char,*) x
     write(error_unit,10) trim(x_char)
     stop
  else
     max_interchange_sort_size = x
  end if
10 format("Error: max interchange sort size cannot be set" //&
        "to values lower than 4 to prevent quick sort from "//&
        "breaking.  A value of ",A," was passed.")
     
end subroutine set_max_interchange_sort_size

