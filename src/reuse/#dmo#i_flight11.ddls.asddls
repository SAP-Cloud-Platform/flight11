@AbapCatalog.sqlViewName: '/DMO/IFLIG_RE11'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Flight View - CDS Data Model'

define view /DMO/I_Flight11 
as select from /dmo/flight11 as Flight

{ 
key Flight.carrier_id          as AirlineID, 
key Flight.connection_id       as ConnectionID, 
key Flight.flight_date         as FlightDate, 
Flight.price                   as Price, 
@Semantics.currencyCode: true
Flight.currency_code           as CurrencyCode, 
Flight.plane_type_id           as PlaneType, 
Flight.seats_max               as MaximumSeats, 
Flight.seats_occupied          as OccupiedSeats
}
