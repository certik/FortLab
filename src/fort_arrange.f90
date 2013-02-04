module fort_arrange
  use, intrinsic :: iso_fortran_env, only : error_unit
  implicit none
  integer, private, save :: max_interchange_sort_size = 20
  interface swap
     module procedure swap_int
     module procedure swap_real
     module procedure swap_dble
  end interface swap
  interface permute
     module procedure permute_vec_int
     module procedure permute_vec_real
     module procedure permute_vec_dble
     module procedure permute_vec_in_place_int
     module procedure permute_vec_in_place_real
     module procedure permute_vec_in_place_dble
     module procedure permute_mat_int
     module procedure permute_mat_real
     module procedure permute_mat_dble
     module procedure permute_mat_in_place_int
     module procedure permute_mat_in_place_real
     module procedure permute_mat_in_place_dble
  end interface permute
  interface interchange_sort
     module procedure interchange_sort_list_int
     module procedure interchange_sort_list_real
     module procedure interchange_sort_list_dble
     module procedure interchange_sort_list_and_map_int
     module procedure interchange_sort_list_and_map_real
     module procedure interchange_sort_list_and_map_dble
  end interface interchange_sort
  interface quick_sort
     module procedure quick_sort_int
     module procedure quick_sort_real
     module procedure quick_sort_dble
     module procedure quick_sort_map_int
     module procedure quick_sort_map_real
     module procedure quick_sort_map_dble
  end interface quick_sort
  interface sort
     module procedure sort_int
     module procedure sort_real
     module procedure sort_dble
     module procedure sort_map_int
     module procedure sort_map_real
     module procedure sort_map_dble
     module procedure sort_mat_int
     module procedure sort_mat_real
     module procedure sort_mat_dble
     module procedure sort_mat_idx_col_int
     module procedure sort_mat_idx_col_real
     module procedure sort_mat_idx_col_dble
  end interface sort
  interface is_sorted
     module procedure is_sorted_int
     module procedure is_sorted_real
     module procedure is_sorted_dble
  end interface is_sorted
  interface unique
!     module procedure unique_func_int
!     module procedure unique_func_real
!     module procedure unique_func_dble
     module procedure unique_sub_int
     module procedure unique_sub_real
     module procedure unique_sub_dble
     module procedure unique_sub_map_int
     module procedure unique_sub_map_real
     module procedure unique_sub_map_dble
  end interface unique
contains
!  include 'unique_func_int.f90'
!  include 'unique_func_real.f90'
!  include 'unique_func_dble.f90'
  include 'unique_sub_int.f90'
  include 'unique_sub_real.f90'
  include 'unique_sub_dble.f90'
  include 'unique_sub_map_int.f90'
  include 'unique_sub_map_real.f90'
  include 'unique_sub_map_dble.f90'
  include 'is_sorted_int.f90'
  include 'is_sorted_real.f90'
  include 'is_sorted_dble.f90'
  include 'sort.f90'
  include 'sort_mat_int.f90'
  include 'sort_mat_real.f90'
  include 'sort_mat_dble.f90'
  include 'sort_mat_idx_col_int.f90'
  include 'sort_mat_idx_col_real.f90'
  include 'sort_mat_idx_col_dble.f90'
  include 'quick_sort_int.f90'
  include 'quick_sort_real.f90'
  include 'quick_sort_dble.f90'
  include 'quick_sort_map_int.f90'
  include 'quick_sort_map_real.f90'
  include 'quick_sort_map_dble.f90'
  include 'interchange_sort_list.f90'
  include 'interchange_sort_list_and_map.f90'
  include 'permute_vec_int.f90'
  include 'permute_vec_real.f90'
  include 'permute_vec_dble.f90'
  include 'permute_vec_in_place_int.f90'
  include 'permute_vec_in_place_real.f90'
  include 'permute_vec_in_place_dble.f90'
  include 'permute_mat_int.f90'
  include 'permute_mat_real.f90'
  include 'permute_mat_dble.f90'
  include 'permute_mat_in_place_int.f90'
  include 'permute_mat_in_place_real.f90'
  include 'permute_mat_in_place_dble.f90'
  include 'swap.f90'
  include 'set_max_interchange_sort_size.f90'
end module fort_arrange
