///outside_view(distance)

/*
**  Usage:
**      outside_view(distance)
**
**  Given
**      distance    = How much distance to check
**
**  Purpose:
**      Checks if a object is outside the view and returns true if the object is outside.
*/

//Telling the compiler to compile this script inline
gml_pragma("forceinline");

//Return if the object is outside the view
return (x < view_xview[view_current] - argument[0])
|| (y < view_yview[view_current] - argument[0])
|| (x > view_xview[view_current] + view_wview[view_current] + argument[0])
|| (y > view_yview[view_current] + view_hview[view_current] + argument[0]);
