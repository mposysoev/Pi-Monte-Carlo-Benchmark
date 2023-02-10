program pimc
    implicit none
    integer :: number_of_iteration = 1000000000
    double precision :: counter = 0.0
    double precision :: x, y, result
    integer :: i

    do i = 0, number_of_iteration
        call random_number(x)
        call random_number(y)

        if ( x*x + y*y < 1 ) then
            counter = counter + 1.0
        end if
    end do

    result = (4.0 * counter) / (number_of_iteration * 1.0)

    print *, result

end program pimc