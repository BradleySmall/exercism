-module(series).

-export([slices/2]).


slices(_,Series) when length(Series) == 0 -> 
    error("Error: Series can't be empty.");

slices(SliceLength,Series) when length(Series) < SliceLength -> 
    error("Error: Series not long enough for slice.");

slices(SliceLength,Series) when length(Series) == SliceLength -> 
    [Series];

slices(SliceLength,Series) -> 
    [string:slice(Series,0,SliceLength) | slices(SliceLength, tl(Series))].
