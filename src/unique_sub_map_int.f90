subroutine unique_sub_map_int(x,vec,map)
  integer, intent(in) :: x(:)
  integer, intent(out), allocatable :: vec(:)
  integer, intent(out), allocatable :: map(:)
  integer :: list(size(x))
  integer :: i,j,n
  logical :: inc(size(x))
  integer :: in_map(size(x))
  inc = .true.
  list = x
  call sort(list,in_map)
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
  n = count(inc)
  allocate(vec(n))
  allocate(map(n))
  
  j = 0
  do i = 1,size(x)
     if (inc(i)) then
        j = j + 1
        map(j) = i
     end if
  end do
  vec = list(map)
  map = in_map(map)
end subroutine unique_sub_map_int

