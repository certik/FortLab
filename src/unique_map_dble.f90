subroutine unique_map_dble(x,vec,map)
  double precision, intent(in) :: x(:)
  double precision, intent(out), allocatable :: vec(:)
  integer, intent(out), allocatable :: map(:)
  double precision :: list(size(x))
  integer :: i,j,n
  logical :: inc(size(x))
  integer :: in_map(size(x))
  inc = .true.
  call DCOPY(size(x),x,1,list,1)
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
end subroutine unique_map_dble

