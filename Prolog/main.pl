generate_point(CIN, COUT) :- 
      X is random_float(),
      Y is random_float(),
      DIST is X*X + Y*Y,
      (DIST < 1 -> 
            COUT is CIN + 1;
            COUT is CIN).


calculate_pi(1000000, COUNTER) :- 
      RESULT is 4.0 * COUNTER / 1000000,
      write(RESULT),nl.
calculate_pi(ITER, COUNTER) :-
      generate_point(COUNTER, OUTCOUNT),
      NEXT is ITER + 1,
      calculate_pi(NEXT, OUTCOUNT).  

main :-
      calculate_pi(0,0).