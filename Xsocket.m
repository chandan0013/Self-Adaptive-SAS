%%% known = [673646 777589 943817];


function y1 = Selfadaption(cost, known)
  k = known;
  epsilon = 0;
  config1 = 0;
  if cost < known(1,1)
      config1 = 2;
    else
        if cost <known(1,2)
            config1 = 3;
        else
            if cost < known(1,3)
                 epsilon = (cost - known(1,2))/ (known(1,3)-known(1,2));
                 if epsilon < 0.25
                     config1 = 7;
                 elseif epsilon > 0.25 && epsilon < 0.5
                      config1 = 5;
                 elseif epsilon > 0.5 && epsilon < 0.75
                      config1 = 6;
                 else
                      config1 = 9;
                 end
            else
                 if cost < known(1,4)
                     epsilon = (cost - known(1,3))/ (known(1,4)-known(1,3));
                     if epsilon < 0.5
                         config1 = 10;
                     else
                         config1 = 11;
                     end
                 else
                     if cost < known(1,5)
                        epsilon = (cost - known(1,4))/ (known(1,5)-known(1,4));
                        if epsilon < 0.3
                              config1 = 20;
                        elseif epsilon < 0.6
                             config1 = 13;
                        else
                             config1 = 14;
                        end
                     else
                        config1 = 17;
                     end
                 end
            end
        end
    end

  y1 = config1;
end