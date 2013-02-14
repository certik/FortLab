program test_sort
  use fort_arrange
  implicit none
  integer, parameter :: n = 5000000
  integer, allocatable :: x_int(:),y_int(:),map(:)
  real, allocatable :: x_real(:),y_real(:)
  double precision, allocatable :: x_dble(:),y_dble(:)
  real :: t0,t1,x
  integer :: i
  character(len=80) :: time,passP

  print '(/,"============================================================")'
  print '("    Test Sort of ",I8, " elements")',n
  print '("============================================================")'


  
  print '(/,"============================================================")'
  print '("    Test Sort of Random Lists")'
  print '("============================================================")'

  !Integer
  allocate(x_int(n))
  do i = 1,n
     call random_number(x)
     x_int(i) = floor(x * 10000)
  end do
  call cpu_time(t0)
  call sort(x_int)
  call cpu_time(t1)
  i = is_sorted(x_int)
  if (i == 0) then
     write(passP,'("Pass")')
  else
     write(passP,'("Fail")')
  end if
  write(time,*) t1-t0
  print '("Integer          ",A,"sec ",A)', trim(time), trim(passP)
  deallocate(x_int)

  !Real
  allocate(x_real(n))
  call random_number(x_real)
  call cpu_time(t0)
  call sort(x_real)
  call cpu_time(t1)
  i = is_sorted(x_real)
  if (i == 0) then
     write(passP,'("Pass")')
  else
     write(passP,'("Fail")')
  end if
  write(time,*) t1-t0
  print '("Real             ",A,"sec ",A)', trim(time), trim(passP)
  deallocate(x_real)

  !Double Precision
  allocate(x_dble(n))
  call random_number(x_dble)
  call cpu_time(t0)
  call sort(x_dble)
  call cpu_time(t1)
  i = is_sorted(x_dble)
  if (i == 0) then
     write(passP,'("Pass")')
  else
     write(passP,'("Fail")')
  end if
  write(time,*) t1-t0
  print '("Double Precision ",A,"sec ",A)', trim(time), trim(passP)
  deallocate(x_dble)

  !Identical Lists
  print '(/,"============================================================")'
  print '("    Test Sort of Identical Lits")'
  print '("============================================================")'

  !Integer
  allocate(x_int(n))
  x_int = 1
  call cpu_time(t0)
  call sort(x_int)
  call cpu_time(t1)
  i = is_sorted(x_int)
  if (i == 0) then
     write(passP,'("Pass")')
  else
     write(passP,'("Fail")')
  end if
  write(time,*) t1-t0
  print '("Integer          ",A,"sec ",A)', trim(time), trim(passP)
  deallocate(x_int)

  !Real
  allocate(x_real(n))
  x_real = 1.0
  call cpu_time(t0)
  call sort(x_real)
  call cpu_time(t1)
  i = is_sorted(x_real)
  if (i == 0) then
     write(passP,'("Pass")')
  else
     write(passP,'("Fail")')
  end if
  write(time,*) t1-t0
  print '("Real             ",A,"sec ",A)', trim(time), trim(passP)
  deallocate(x_real)

  !Double Precision
  allocate(x_dble(n))
  x_dble = 1.0D0
  call cpu_time(t0)
  call sort(x_dble)
  call cpu_time(t1)
  i = is_sorted(x_dble)
  if (i == 0) then
     write(passP,'("Pass")')
  else
     write(passP,'("Fail")')
  end if
  write(time,*) t1-t0
  print '("Double Precision ",A,"sec ",A)', trim(time), trim(passP)
  deallocate(x_dble)

  !Test Sort Map on Random List
  print '(/,"============================================================")'
  print '("    Test Sort Map of Random Lists")'
  print '("============================================================")'

  !Integer
  allocate(x_int(n),y_int(n),map(n))
  do i = 1,n
     call random_number(x)
     x_int(i) = floor(x * 10000)
  end do
  y_int = x_int
  call cpu_time(t0)
  call sort(y_int,map)
  call cpu_time(t1)
  x_int = x_int(map)
  i = is_sorted(x_int)
  if (i == 0) then
     write(passP,'("Pass")')
  else
     write(passP,'("Fail")')
  end if
  write(time,*) t1-t0
  print '("Integer          ",A,"sec ",A)', trim(time), trim(passP)
  deallocate(x_int,y_int,map)

  !Real
  allocate(x_real(n),y_real(n),map(n))
  call random_number(x_real)
  y_real = x_real
  call cpu_time(t0)
  call sort(y_real,map)
  call cpu_time(t1)
  x_real = x_real(map)
  i = is_sorted(x_real)
  if (i == 0) then
     write(passP,'("Pass")')
  else
     write(passP,'("Fail")')
  end if
  write(time,*) t1-t0
  print '("Real             ",A,"sec ",A)', trim(time), trim(passP)
  deallocate(x_real,y_real,map)

  !Double Precision
  allocate(x_dble(n),y_dble(n),map(n))
  call random_number(x_dble)
  y_dble = x_dble
  call cpu_time(t0)
  call sort(y_dble,map)
  call cpu_time(t1)
  x_dble = x_dble(map)
  i = is_sorted(x_dble)
  if (i == 0) then
     write(passP,'("Pass")')
  else
     write(passP,'("Fail")')
  end if
  write(time,*) t1-t0
  print '("Double Precision ",A,"sec ",A)', trim(time), trim(passP)
  deallocate(x_dble,y_dble,map)


  !Test Sort Map on Random List
  print '(/,"============================================================")'
  print '("    Test Sort Map of Indentical Lists")'
  print '("============================================================")'

  !Integer
  allocate(x_int(n),y_int(n),map(n))
  x_int = 1
  y_int = x_int
  call cpu_time(t0)
  call sort(y_int,map)
  call cpu_time(t1)
  x_int = x_int(map)
  i = is_sorted(x_int)
  if (i == 0) then
     write(passP,'("Pass")')
  else
     write(passP,'("Fail")')
  end if
  write(time,*) t1-t0
  print '("Integer          ",A,"sec ",A)', trim(time), trim(passP)
  deallocate(x_int,y_int,map)

  !Real
  allocate(x_real(n),y_real(n),map(n))
  x_real = 1.0
  y_real = x_real
  call cpu_time(t0)
  call sort(y_real,map)
  call cpu_time(t1)
  x_real = x_real(map)
  i = is_sorted(x_real)
  if (i == 0) then
     write(passP,'("Pass")')
  else
     write(passP,'("Fail")')
  end if
  write(time,*) t1-t0
  print '("Real             ",A,"sec ",A)', trim(time), trim(passP)
  deallocate(x_real,y_real,map)

  !Double Precision

  allocate(x_dble(n),y_dble(n),map(n))
  x_dble = 1.0D0
  y_dble = x_dble
  call cpu_time(t0)
  call sort(y_dble,map)
  call cpu_time(t1)
  x_dble = x_dble(map)
  i = is_sorted(x_dble)
  if (i == 0) then
     write(passP,'("Pass")')
  else
     write(passP,'("Fail")')
  end if
  write(time,*) t1-t0
  print '("Double Precision ",A,"sec ",A)', trim(time), trim(passP)
  deallocate(x_dble,y_dble,map)

end program test_sort
