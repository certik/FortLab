program main
  use, intrinsic :: iso_c_binding
  use fort_arrange
  implicit none
  interface
     subroutine c_qsort_int (n,x) bind(c)
       use iso_c_binding
       integer (c_int), VALUE :: n
       integer (c_int) :: x(*)
     end subroutine c_qsort_int
     subroutine c_qsort_real (n,x) bind(c)
       use iso_c_binding
       integer (c_int), VALUE :: n
       real (c_float) :: x(*)
     end subroutine c_qsort_real
     subroutine c_qsort_dble (n,x) bind(c)
       use iso_c_binding
       integer (c_int), VALUE :: n
       real (c_double) :: x(*)
     end subroutine c_qsort_dble
  end interface  
  
  integer(c_int), parameter :: n = 50000000
  integer, allocatable :: x_int(:)
  integer(c_int), allocatable :: y_int(:)
  real, allocatable :: x_real(:)
  real(c_float), allocatable :: y_real(:)
  double precision, allocatable :: x_dble(:)
  real(c_double), allocatable :: y_dble(:)
  real :: t0,t1
  integer :: i


  print '(/,"============================================================")'
  print '("    Test Fort Arrange sort against C qsort on ",/,I10," elements")',n
  print '("============================================================")'


  print '(/,"============================================================")'
  print '("    Test Sort of Random Lists")'
  print '("============================================================")'
  
  print '("Integer")'
  allocate(x_int(n),y_int(n))
  do i = 1,n
     call random_number(t0)
     x_int(i) = int(t0 * 10000)
  end do
  y_int = x_int
  call c_qsort_int(n,y_int)
  call cpu_time(t0)
  call sort(x_int)
  call cpu_time(t1)
  print '("Fort Arrange ",F6.2," seconds")',t1 - t0
  deallocate(x_int,y_int)

  print '("Real")'
  allocate(x_real(n),y_real(n))
  call random_number(x_real)
  y_real = x_real
  call c_qsort_real(n,y_real)
  call cpu_time(t0)
  call sort(x_real)
  call cpu_time(t1)
  print '("Fort Arrange ",F6.2," seconds")',t1 - t0
  deallocate(x_real,y_real)

  print '("Double Precision")'
  allocate(x_dble(n),y_dble(n))
  call random_number(x_dble)
  y_dble = x_dble
  call c_qsort_dble(n,y_dble)
  call cpu_time(t0)
  call sort(x_dble)
  call cpu_time(t1)
  print '("Fort Arrange ",F6.2," seconds")',t1 - t0
  deallocate(x_dble,y_dble)

  print '(/,"============================================================")'
  print '("    Test Sort of Sorted Lists")'
  print '("============================================================")'
  
  print '("Integer")'
  allocate(x_int(n),y_int(n))
  do i = 1,n
     x_int(i) = i
  end do
  y_int = x_int
  call c_qsort_int(n,y_int)
  call cpu_time(t0)
  call sort(x_int)
  call cpu_time(t1)
  print '("Fort Arrange ",F6.2," seconds")',t1 - t0
  deallocate(x_int,y_int)

  print '("Real")'
  allocate(x_real(n),y_real(n))
  do i = 1,n
     x_real(i) = real(i)
  end do
  y_real = x_real
  call c_qsort_real(n,y_real)
  call cpu_time(t0)
  call sort(x_real)
  call cpu_time(t1)
  print '("Fort Arrange ",F6.2," seconds")',t1 - t0
  deallocate(x_real,y_real)

  print '("Double Precision")'
  allocate(x_dble(n),y_dble(n))
  do i = 1,n
     x_dble(i) = dble(i)
  end do
  y_dble = x_dble
  call c_qsort_dble(n,y_dble)
  call cpu_time(t0)
  call sort(x_dble)
  call cpu_time(t1)
  print '("Fort Arrange ",F6.2," seconds")',t1 - t0
  deallocate(x_dble,y_dble)

print '(/,"============================================================")'
  print '("    Test Sort of Identical Lists")'
  print '("============================================================")'
  
  print '("Integer")'
  allocate(x_int(n),y_int(n))
  x_int = 1
  y_int = x_int
  call c_qsort_int(n,y_int)
  call cpu_time(t0)
  call sort(x_int)
  call cpu_time(t1)
  print '("Fort Arrange ",F6.2," seconds")',t1 - t0
  deallocate(x_int,y_int)

  print '("Real")'
  allocate(x_real(n),y_real(n))
  x_real = 1.0
  y_real = x_real
  call c_qsort_real(n,y_real)
  call cpu_time(t0)
  call sort(x_real)
  call cpu_time(t1)
  print '("Fort Arrange ",F6.2," seconds")',t1 - t0
  deallocate(x_real,y_real)

  print '("Double Precision")'
  allocate(x_dble(n),y_dble(n))
  x_dble = 1.0D0
  y_dble = x_dble
  call c_qsort_dble(n,y_dble)
  call cpu_time(t0)
  call sort(x_dble)
  call cpu_time(t1)
  print '("Fort Arrange ",F6.2," seconds")',t1 - t0
  deallocate(x_dble,y_dble)
end program main
