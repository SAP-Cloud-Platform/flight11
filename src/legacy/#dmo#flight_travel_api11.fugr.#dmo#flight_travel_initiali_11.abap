"! API for Initializing the Transactional Buffer of the Travel API
"!
FUNCTION /DMO/FLIGHT_TRAVEL_INITIALI_11.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"----------------------------------------------------------------------
  /dmo/cl_flight_legacy11=>get_instance( )->initialize( ).
ENDFUNCTION.
