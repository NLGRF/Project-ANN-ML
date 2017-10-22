function [alphabet,targets] = prprob()
%PRPROB Character recognition problem definition
%  
%  [ALHABET,TARGETS] = PRPROB()
%  Returns:
%    ALPHABET - 35x26 matrix of 5x7 bit maps for each letter.
%    TARGETS  - 26x26 target vectors.

% Mark Beale, 1-31-92
% Revised 12-15-93, MB.
% Copyright 1992-2002 The MathWorks, Inc.
% $Revision: 1.11 $  $Date: 2002/04/14 21:25:54 $

letterA =  [0 0 1 0 0 ...
            0 1 0 1 0 ...
            0 1 0 1 0 ...
            1 0 0 0 1 ...
            1 1 1 1 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ]';

letterB =  [1 1 1 1 0 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 1 1 1 0 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 1 1 1 0 ]';

letterC =  [0 1 1 1 0 ...
            1 0 0 0 1 ...
            1 0 0 0 0 ...
            1 0 0 0 0 ...
            1 0 0 0 0 ...
            1 0 0 0 1 ...
            0 1 1 1 0 ]';

letterD  = [1 1 1 1 0 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 1 1 1 0 ]';

letterE  = [1 1 1 1 1 ...
            1 0 0 0 0 ...
            1 0 0 0 0 ...
            1 1 1 1 0 ...
            1 0 0 0 0 ...
            1 0 0 0 0 ...
            1 1 1 1 1 ]';

letterF =  [1 1 1 1 1 ...
            1 0 0 0 0 ...
            1 0 0 0 0 ...
            1 1 1 1 0 ...
            1 0 0 0 0 ...
            1 0 0 0 0 ...
            1 0 0 0 0 ]';

letterG =  [0 1 1 1 0 ...
            1 0 0 0 1 ...
            1 0 0 0 0 ...
            1 0 0 0 0 ...
            1 0 0 1 1 ...
            1 0 0 0 1 ...
            0 1 1 1 0 ]';

letterH =  [1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 1 1 1 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ]';

letterI =  [0 1 1 1 0 ...
            0 0 1 0 0 ...
            0 0 1 0 0 ...
            0 0 1 0 0 ...
            0 0 1 0 0 ...
            0 0 1 0 0 ...
            0 1 1 1 0 ]';

letterJ =  [1 1 1 1 1 ...
            0 0 1 0 0 ...
            0 0 1 0 0 ...
            0 0 1 0 0 ...
            0 0 1 0 0 ...
            1 0 1 0 0 ...
            0 1 0 0 0 ]';

letterK =  [1 0 0 0 1 ...
            1 0 0 1 0 ...
            1 0 1 0 0 ...
            1 1 0 0 0 ...
            1 0 1 0 0 ...
            1 0 0 1 0 ...
            1 0 0 0 1 ]';

letterL =  [1 0 0 0 0 ...
            1 0 0 0 0 ...
            1 0 0 0 0 ...
            1 0 0 0 0 ...
            1 0 0 0 0 ...
            1 0 0 0 0 ...
            1 1 1 1 1 ]';

letterM =  [1 0 0 0 1 ...
            1 1 0 1 1 ...
            1 0 1 0 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ]';

letterN =  [1 0 0 0 1 ...
            1 1 0 0 1 ...
            1 1 0 0 1 ...
            1 0 1 0 1 ...
            1 0 0 1 1 ...
            1 0 0 1 1 ...
            1 0 0 0 1 ]';

letterO =  [0 1 1 1 0 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            0 1 1 1 0 ]';

letterP =  [1 1 1 1 0 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 1 1 1 0 ...
            1 0 0 0 0 ...
            1 0 0 0 0 ...
            1 0 0 0 0 ]';

letterQ =  [0 1 1 1 0 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 0 1 0 1 ...
            1 0 0 1 0 ...
            0 1 1 0 1 ]';

letterR =  [1 1 1 1 0 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 1 1 1 0 ...
            1 0 1 0 0 ...
            1 0 0 1 0 ...
            1 0 0 0 1 ]';

letterS =  [0 1 1 1 0 ...
            1 0 0 0 1 ...
            0 1 0 0 0 ...
            0 0 1 0 0 ...
            0 0 0 1 0 ...
            1 0 0 0 1 ...
            0 1 1 1 0 ]';

letterT =  [1 1 1 1 1 ...
            0 0 1 0 0 ...
            0 0 1 0 0 ...
            0 0 1 0 0 ...
            0 0 1 0 0 ...
            0 0 1 0 0 ...
            0 0 1 0 0 ]';

letterU =  [1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            0 1 1 1 0 ]';

letterV =  [1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            0 1 0 1 0 ...
            0 0 1 0 0 ]';

letterW =  [1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 0 1 0 1 ...
            1 1 0 1 1 ...
            1 0 0 0 1 ]';

letterX =  [1 0 0 0 1 ...
            1 0 0 0 1 ...
            0 1 0 1 0 ...
            0 0 1 0 0 ...
            0 1 0 1 0 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ]';

letterY =  [1 0 0 0 1 ...
            1 0 0 0 1 ...
            0 1 0 1 0 ...
            0 0 1 0 0 ...
            0 0 1 0 0 ...
            0 0 1 0 0 ...
            0 0 1 0 0 ]';

letterZ =  [1 1 1 1 1 ...
            0 0 0 0 1 ...
            0 0 0 1 0 ...
            0 0 1 0 0 ...
            0 1 0 0 0 ...
            1 0 0 0 0 ...
            1 1 1 1 1 ]';
        
Zero =     [1 1 1 1 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 0 0 0 1 ...
            1 1 1 1 1 ]';

alphabet = [letterA,letterB,letterC,letterD,letterE,letterF,letterG,letterH,...
            letterI,letterJ,letterK,letterL,letterM,letterN,letterO,letterP,...
            letterQ,letterR,letterS,letterT,letterU,letterV,letterW,letterX,...
            letterY,letterZ,Zero];

targets = eye(27);
