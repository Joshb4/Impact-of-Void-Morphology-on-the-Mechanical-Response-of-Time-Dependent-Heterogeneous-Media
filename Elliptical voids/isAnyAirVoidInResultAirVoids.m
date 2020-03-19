function out = isAnyAirVoidInResultAirVoids(circlex_coordinates,circley_coordinates,result_circles_to_be_plotted_xcoordinates,result_circles_to_be_plotted_ycoordinates)

out = false;

if isempty(result_circles_to_be_plotted_ycoordinates) == 0
    circle_vertices_polyshape = polyshape(circlex_coordinates,circley_coordinates);
    for j=1:size(result_circles_to_be_plotted_xcoordinates,1)
        result_polyshape{1,j} = polyshape(result_circles_to_be_plotted_xcoordinates(j,:),result_circles_to_be_plotted_ycoordinates(j,:));
        intersection2 = intersect(circle_vertices_polyshape,result_polyshape{1,j});
        if isempty(intersection2.Vertices) == 0
            out = true;
            break;
        end
    end
end
end