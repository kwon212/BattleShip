function [P] = CreateArrayTest;
% Create Cell Array of Point Values
for k=1:2
    for j=1:2
        for i=1:2
            if i==1
                P{k,j,i} = [k,j];
            else
                P{k,j,i} = ['w'];
                % w for water because no ship yet
            end
        end
    end
end