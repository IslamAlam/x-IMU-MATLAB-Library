classdef CalInertialMagneticDataClass < InertialMagneticDataBaseClass

    %% Public 'read-only' properties

    properties (SetAccess = private)
        FileNameAppendage = '_CalInertialMagnetic.csv';
    end

    %% Public methods

    methods (Access = public)
        function obj = CalInertialMagneticDataClass(obj, varargin)
            for i = 1:2:nargin
                if  strcmp(varargin{i}, 'SampleRate'), obj.SampleRate = varargin{i+1};
                else error('Invalid argument.');
                end
            end
        end
        function fig = Plot(obj)
            if(obj.NumSamples == 0)
                error('No data to plot.');
            else
                fig = obj.PlotRawOrCal('Cal');
            end
        end
    end

end

%% End of class