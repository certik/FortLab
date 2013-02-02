subroutine unique_sub_real(x,out)
  real, intent(in) :: x(:)
  real, intent(out), allocatable :: out(:)
  real :: list(size(x))
  integer :: i,j
  logical :: inc(size(x))
  inc = .true.
  call SCOPY(size(x),x,1,list,1)
  call sort(list)
  i = 1
  do
     if (i > size(x)) exit
     j = i
     do 
        j = j + 1
        if (j > size(x)) exit
        if (list(i) == list(j)) then
           inc(j) = .false.
        else
           i = j
        end if
     end do
  end do
  allocate(out(count(inc)))
  j = 0
  do i = 1,size(x)
     if (inc(i)) then
        j = j + 1
        out(j) = list(i)
     end if
  end do
end subroutine unique_sub_real


  
