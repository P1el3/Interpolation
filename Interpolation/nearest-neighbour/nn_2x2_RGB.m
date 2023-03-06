function out = nn_2x2_RGB(img, STEP = 0.1)
    % =========================================================================
    % Aplica interpolare nearest neighbour pe imaginea 2x2 img cu puncte
    % intermediare echidistante.
    % img este o imagine colorata RGB.
    % =========================================================================
      rosu = img(:,:,1);
      verde  = img(:,:,2);
      albastru  = img(:,:,3);
    % TODO: extrage canalul rosu al imaginii
      out_rosu = nn_2x2(rosu, STEP);
    % TODO: extrage canalul verde al imaginii
      out_verde = nn_2x2(verde, STEP); 
    % TODO: extrace canalul albastru al imaginii
      out_albastru = nn_2x2(albastru, STEP);
    % TODO: aplica functia nn pe cele 3 canale ale imaginii
    % TODO: formeaza imaginea finala cu cele 3 canale de culori
      out = cat(3, out_rosu, out_verde, out_albastru);
    % Hint: functia cat

endfunction
