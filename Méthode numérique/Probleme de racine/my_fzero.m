function r = my_fzero(f,v)
if length(v)==2
   xG = v(1);
   xD = v(2);     % Les 2 limites
else
   xG = v-0.5;
   xD = v+0.5;    % Autour d'une valeur
end
p=0.0001;   % max itération et précision
yG = f(xG);
yD = f(xD);
if yG*yD < 0.0    % Est-ce que les limites englobent une racine ?
    while abs(xD-xG) > p % Est-ce que l'erreur > p ?
        xM = (xG + xD)/2;
        yM = f(xM);
        if yM*yG > 0 % Est-ce que xM est à gauche de la racine ?
            xG=xM;   % déplace la limite gauche
            yG=yM;
        else
            xD=xM;   % déplace la limite droite
            yD=yM;
        end
    end
    r = xM;          % retourne la racine
else
    fprintf('ERREUR: La fonction a le même signe aux 2 limites.');
end
