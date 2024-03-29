function out = nn_2x2(f, STEP = 0.1)
    % =========================================================================
    % Aplica interpolare nearest-neighbour pe imaginea 2x2 f cu puncte
    % intermediare echidistante.
    % f are valori cunoscute in punctele (1, 1), (1, 2), (2, 1) si (2, 2).
    % 
    % Parametrii:
    % - f = imaginea ce se doreste sa fie interpolata
    % - STEP = distanta dintre doua puncte succesive
    % =========================================================================
    
    % TODO: defineste coordonatele x si y ale punctelor intermediare
    x_int = 1 : STEP : 2;
    y_int = 1 : STEP : 2;

    % afla nr. de puncte
    n = length(x_int);

    % cele 4 punctele incadratoare vor fi aceleasi pentru toate punctele din
    % interior
    x1 = y1 = 1;
    x2 = y2 = 2;

    % TODO: initializeaza rezultatul cu o matrice n x n plina de zero
    out = zeros(n,n);
    % parcurge fiecare pixel din imaginea finala
    for i = 1 : n
        for j = 1 : n
          min_i = 2;
          min_j = 2;
            if i <= ceil(n/2)-1
                min_i = 1;
            endif
             if j <= ceil(n/2)-1
               min_j = 1;
             endif
            % TODO: afla cel mai apropiat pixel din imaginea initiala
            
            % TODO: calculeaza pixelul din imaginea finala
            out(i, j) = f(min_i, min_j);
            
        endfor
    endfor

endfunction
