subroutine unique_int(vec_in,vec_out)
  integer, intent(in) :: vec_in(:)
  integer, intent(out), allocatable :: vec_out(:)
  integer :: x(size(vec_in))
  integer :: i,j
  logical :: inc(size(vec_in))

  !Make a copy of vec_in and sort it
  x = vec_in
  call sort(x)

  !Build include vector
  inc = .true.
  i = 1
  do
     if (i > size(x)) exit
     j = i
     do 
        j = j + 1
        if (j > size(x)) exit
        if (x(i) == x(j)) then
           inc(j) = .false.
        else
           i = j
        end if
     end do
  end do

  !Build out vector
  allocate(vec_out(count(inc)))
  j = 0
  do i = 1,size(x)
     if (inc(i)) then
        j = j + 1
        vec_out(j) = x(i)
     end if
  end do
end subroutine unique_int


  
