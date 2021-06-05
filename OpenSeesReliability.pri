
INCLUDEPATH += \
    $$PWD/SRC/reliability/analysis/analysis \
    $$PWD/SRC/reliability/analysis/analysis/system \
    $$PWD/SRC/reliability/analysis/convergenceCheck \
    $$PWD/SRC/reliability/analysis/curvature \
    $$PWD/SRC/reliability/analysis/designPoint \
    $$PWD/SRC/reliability/analysis/direction \
    $$PWD/SRC/reliability/analysis/gFunction \
    $$PWD/SRC/reliability/analysis/gradient \
    $$PWD/SRC/reliability/analysis/hessian \
    $$PWD/SRC/reliability/analysis/hessianApproximation \
    $$PWD/SRC/reliability/analysis/meritFunction \
    $$PWD/SRC/reliability/analysis/misc \
    $$PWD/SRC/reliability/analysis/randomNumber \
    $$PWD/SRC/reliability/analysis/rootFinding \
    $$PWD/SRC/reliability/analysis/sensitivity \
    $$PWD/SRC/reliability/analysis/stepSize \
    $$PWD/SRC/reliability/analysis/telm \
    $$PWD/SRC/reliability/analysis/transformation \
    $$PWD/SRC/reliability/domain/components \
    $$PWD/SRC/reliability/domain/distributions \
    $$PWD/SRC/reliability/domain/filter \
    $$PWD/SRC/reliability/domain/functionEvaluator \
    $$PWD/SRC/reliability/domain/modulatingFunction \
    $$PWD/SRC/reliability/domain/performanceFunction \
    $$PWD/SRC/reliability/domain/spectrum \
    $$PWD/SRC/reliability/domain/storage \
    $$PWD/SRC/reliability/FEsensitivity \
    $$PWD/SRC/reliability/tcl \

HEADERS += \
   $$PWD/SRC/reliability/analysis/analysis/system/IPCM.h \
   $$PWD/SRC/reliability/analysis/analysis/system/MVNcdf.h \
   $$PWD/SRC/reliability/analysis/analysis/system/PCM.h \
   $$PWD/SRC/reliability/analysis/analysis/system/SCIS.h \
   $$PWD/SRC/reliability/analysis/analysis/BivariateDecomposition.h \
   $$PWD/SRC/reliability/analysis/analysis/ExperimentalPointRule1D.h \
   $$PWD/SRC/reliability/analysis/analysis/FORMAnalysis.h \
   $$PWD/SRC/reliability/analysis/analysis/FOSMAnalysis.h \
   #$$PWD/SRC/reliability/analysis/analysis/FragilityAnalysis.h \ #unknown type GradGEEvaluator
   $$PWD/SRC/reliability/analysis/analysis/GFunVisualizationAnalysis.h \
   $$PWD/SRC/reliability/analysis/analysis/GridPlane.h \
   $$PWD/SRC/reliability/analysis/analysis/ImportanceSamplingAnalysis.h \
   #$$PWD/SRC/reliability/analysis/analysis/MVFOSMAnalysis.h \ #unknown type GradGEEvaluator
   #$$PWD/SRC/reliability/analysis/analysis/OptimizationAnalysis.h \
   $$PWD/SRC/reliability/analysis/analysis/OrthogonalPlaneSamplingAnalysis.h \
   $$PWD/SRC/reliability/analysis/analysis/OutCrossingAnalysis.h \
   #$$PWD/SRC/reliability/analysis/analysis/ParametricReliabilityAnalysis.h \
   $$PWD/SRC/reliability/analysis/analysis/PrincipalAxis.h \
   $$PWD/SRC/reliability/analysis/analysis/ReliabilityAnalysis.h \
   $$PWD/SRC/reliability/analysis/analysis/RespSurfaceSimulation.h \
   $$PWD/SRC/reliability/analysis/analysis/SamplingAnalysis.h \
   $$PWD/SRC/reliability/analysis/analysis/SORMAnalysis.h \
   $$PWD/SRC/reliability/analysis/analysis/SurfaceDesign.h \
   $$PWD/SRC/reliability/analysis/analysis/SystemAnalysis.h \
   $$PWD/SRC/reliability/analysis/analysis/UniformExperimentalPointRule1D.h \
   $$PWD/SRC/reliability/analysis/analysis/UnivariateDecomposition.h \
   $$PWD/SRC/reliability/analysis/convergenceCheck/OptimalityConditionReliabilityConvergenceCheck.h \
   $$PWD/SRC/reliability/analysis/convergenceCheck/ReliabilityConvergenceCheck.h \
   $$PWD/SRC/reliability/analysis/convergenceCheck/StandardReliabilityConvergenceCheck.h \
   $$PWD/SRC/reliability/analysis/curvature/CurvatureFitting.h \
   $$PWD/SRC/reliability/analysis/curvature/CurvaturesBySearchAlgorithm.h \
   $$PWD/SRC/reliability/analysis/curvature/FindCurvatures.h \
   $$PWD/SRC/reliability/analysis/curvature/FirstPrincipalCurvature.h \
   $$PWD/SRC/reliability/analysis/designPoint/FindDesignPointAlgorithm.h \
   $$PWD/SRC/reliability/analysis/designPoint/SearchWithStepSizeAndStepDirection.h \
   $$PWD/SRC/reliability/analysis/direction/GradientProjectionSearchDirection.h \
   $$PWD/SRC/reliability/analysis/direction/HLRFSearchDirection.h \
   $$PWD/SRC/reliability/analysis/direction/PolakHeSearchDirectionAndMeritFunction.h \
   $$PWD/SRC/reliability/analysis/direction/SearchDirection.h \
   $$PWD/SRC/reliability/analysis/direction/SQPsearchDirectionMeritFunctionAndHessian.h \
#   $$PWD/SRC/reliability/analysis/gFunction/GFunEvaluator.h \
   $$PWD/SRC/reliability/analysis/gradient/FiniteDifferenceGradient.h \
   $$PWD/SRC/reliability/analysis/gradient/GradientEvaluator.h \
   $$PWD/SRC/reliability/analysis/gradient/ImplicitGradient.h \
   $$PWD/SRC/reliability/analysis/hessian/FiniteDifferenceHessian.h \
   $$PWD/SRC/reliability/analysis/hessian/HessianEvaluator.h \
   $$PWD/SRC/reliability/analysis/hessianApproximation/Hessian.h \
   $$PWD/SRC/reliability/analysis/hessianApproximation/HessianApproximation.h \
   $$PWD/SRC/reliability/analysis/meritFunction/AdkZhangMeritFunctionCheck.h \
   $$PWD/SRC/reliability/analysis/meritFunction/CriteriaReductionMeritFunctionCheck.h \
   $$PWD/SRC/reliability/analysis/meritFunction/MeritFunctionCheck.h \
   $$PWD/SRC/reliability/analysis/misc/CorrelatedStandardNormal.h \
   $$PWD/SRC/reliability/analysis/misc/MatrixOperations.h \
   $$PWD/SRC/reliability/analysis/randomNumber/CStdLibRandGenerator.h \
   $$PWD/SRC/reliability/analysis/randomNumber/RandomNumberGenerator.h \
#   $$PWD/SRC/reliability/analysis/rootFinding/ModNewtonRootFinding.h \
   $$PWD/SRC/reliability/analysis/rootFinding/RootFinding.h \
   $$PWD/SRC/reliability/analysis/rootFinding/SafeGuardedZeroFindingAlgorithm.h \
   $$PWD/SRC/reliability/analysis/rootFinding/SecantRootFinding.h \
   $$PWD/SRC/reliability/analysis/rootFinding/ZeroFindingAlgorithm.h \
   #$$PWD/SRC/reliability/analysis/sensitivity/FiniteDifferenceGradGEvaluator.h \
   #$$PWD/SRC/reliability/analysis/sensitivity/GradGEvaluator.h \
   #$$PWD/SRC/reliability/analysis/sensitivity/OpenSeesGradGEvaluator.h \
   $$PWD/SRC/reliability/analysis/stepSize/ArmijoStepSizeRule.h \
   $$PWD/SRC/reliability/analysis/stepSize/FixedStepSizeRule.h \
   $$PWD/SRC/reliability/analysis/stepSize/StepSizeRule.h \
#   $$PWD/SRC/reliability/analysis/telm/Analyzer.h \
#   $$PWD/SRC/reliability/analysis/telm/AnalyzerGradGEvaluator.h \
#   $$PWD/SRC/reliability/analysis/telm/CrossingRateAnalyzer.h \
#   $$PWD/SRC/reliability/analysis/telm/DynamicAnalyzer.h \
#   $$PWD/SRC/reliability/analysis/telm/FirstPassageAnalyzer.h \
#   $$PWD/SRC/reliability/analysis/telm/FOSeriesSimulation.h \
#   $$PWD/SRC/reliability/analysis/telm/GeneralRandGenerator.h \
#   $$PWD/SRC/reliability/analysis/telm/InitialPointBuilder.h \
#   $$PWD/SRC/reliability/analysis/telm/InitialStaticAnalysis.h \
#   $$PWD/SRC/reliability/analysis/telm/localMath.h \
#   $$PWD/SRC/reliability/analysis/telm/NewDiscretizedRandomProcessSeries.h \
#   $$PWD/SRC/reliability/analysis/telm/NewNewmarkSensitivityIntegrator.h \
#   $$PWD/SRC/reliability/analysis/telm/NewSearchWithStepSizeAndStepDirection.h \
#   $$PWD/SRC/reliability/analysis/telm/NewSensitivityAlgorithm.h \
#   $$PWD/SRC/reliability/analysis/telm/NewStandardLinearOscillatorAccelerationFilter.h \
#   $$PWD/SRC/reliability/analysis/telm/NewStaticSensitivityIntegrator.h \
#   $$PWD/SRC/reliability/analysis/telm/NewWhitenoiseFilter.h \
#   $$PWD/SRC/reliability/analysis/telm/NonStatFirstPassageAnalyzer.h \
#   $$PWD/SRC/reliability/analysis/telm/OutCrossingResults.h \
#   $$PWD/SRC/reliability/analysis/telm/PerformanceFunctionCoeff.h \
#   $$PWD/SRC/reliability/analysis/telm/PerformanceFunctionCoefficientIter.h \
#   $$PWD/SRC/reliability/analysis/telm/randomc.h \
#   $$PWD/SRC/reliability/analysis/telm/RandomProcess.h \
#   $$PWD/SRC/reliability/analysis/telm/RandomVibrationSimulation.h \
#   $$PWD/SRC/reliability/analysis/telm/RandomVibrationSimulatorResult.h \
#   $$PWD/SRC/reliability/analysis/telm/ReliabilityDirectIntegrationAnalysis.h \
#   $$PWD/SRC/reliability/analysis/telm/ReliabilityStaticAnalysis.h \
#   $$PWD/SRC/reliability/analysis/telm/SelectLoadInitialStaticAnalysis.h \
#   $$PWD/SRC/reliability/analysis/telm/SmoothConcrete02.h \
#   $$PWD/SRC/reliability/analysis/telm/StatFirstPassageAnalyzer.h \
#   $$PWD/SRC/reliability/analysis/telm/StaticAnalyzer.h \
#   $$PWD/SRC/reliability/analysis/telm/ThresholdIncInitialPointBuilder.h \
#   $$PWD/SRC/reliability/analysis/telm/TimePoints.h \
   $$PWD/SRC/reliability/analysis/transformation/AllIndependentTransformation.h \
   $$PWD/SRC/reliability/analysis/transformation/NatafProbabilityTransformation.h \
   $$PWD/SRC/reliability/analysis/transformation/ProbabilityTransformation.h \
   $$PWD/SRC/reliability/domain/components/CorrelationCoefficient.h \
   $$PWD/SRC/reliability/domain/components/CorrelationCoefficientIter.h \
   $$PWD/SRC/reliability/domain/components/Cutset.h \
   $$PWD/SRC/reliability/domain/components/CutsetIter.h \
   $$PWD/SRC/reliability/domain/components/ParameterPositioner.h \
   $$PWD/SRC/reliability/domain/components/ParameterPositionerIter.h \
   $$PWD/SRC/reliability/domain/components/PrincipalPlane.h \
   $$PWD/SRC/reliability/domain/components/RandomVariable.h \
   $$PWD/SRC/domain/component/RVParameter.h \
   $$PWD/SRC/domain/component/DVParameter.h \
   $$PWD/SRC/optimization/domain/component/DesignVariable.h \
   $$PWD/SRC/optimization/domain/component/DesignVariableIter.h \
   $$PWD/SRC/optimization/domain/component/DesignVariablePositioner.h \
   $$PWD/SRC/optimization/domain/component/DesignVariablePositionerIter.h \
   $$PWD/SRC/reliability/domain/components/RandomVariableIter.h \
   $$PWD/SRC/reliability/domain/components/RandomVariablePositioner.h \
   $$PWD/SRC/reliability/domain/components/RandomVariablePositionerIter.h \
   $$PWD/SRC/reliability/domain/components/ReliabilityDomain.h \
   $$PWD/SRC/reliability/domain/components/ReliabilityDomainComponent.h \
   $$PWD/SRC/reliability/domain/distributions/BetaRV.h \
   $$PWD/SRC/reliability/domain/distributions/ChiSquareRV.h \
   $$PWD/SRC/reliability/domain/distributions/ExponentialRV.h \
   $$PWD/SRC/reliability/domain/distributions/GammaRV.h \
   $$PWD/SRC/reliability/domain/distributions/GumbelRV.h \
   $$PWD/SRC/reliability/domain/distributions/LaplaceRV.h \
   $$PWD/SRC/reliability/domain/distributions/LognormalRV.h \
   $$PWD/SRC/reliability/domain/distributions/NormalRV.h \
   $$PWD/SRC/reliability/domain/distributions/ParetoRV.h \
   $$PWD/SRC/reliability/domain/distributions/RayleighRV.h \
   $$PWD/SRC/reliability/domain/distributions/ShiftedExponentialRV.h \
   $$PWD/SRC/reliability/domain/distributions/ShiftedRayleighRV.h \
   $$PWD/SRC/reliability/domain/distributions/Type1LargestValueRV.h \
   $$PWD/SRC/reliability/domain/distributions/Type1SmallestValueRV.h \
   $$PWD/SRC/reliability/domain/distributions/Type2LargestValueRV.h \
   $$PWD/SRC/reliability/domain/distributions/Type3SmallestValueRV.h \
   $$PWD/SRC/reliability/domain/distributions/UniformRV.h \
   $$PWD/SRC/reliability/domain/distributions/UserDefinedRV.h \
   $$PWD/SRC/reliability/domain/distributions/WeibullRV.h \
   $$PWD/SRC/reliability/domain/filter/DeltaFilter.h \
   $$PWD/SRC/reliability/domain/filter/Filter.h \
   $$PWD/SRC/reliability/domain/filter/FilterIter.h \
   $$PWD/SRC/reliability/domain/filter/KooFilter.h \
   $$PWD/SRC/reliability/domain/filter/StandardLinearOscillatorAccelerationFilter.h \
   $$PWD/SRC/reliability/domain/filter/StandardLinearOscillatorDisplacementFilter.h \
   $$PWD/SRC/reliability/domain/filter/StandardLinearOscillatorVelocityFilter.h \
   $$PWD/SRC/reliability/domain/functionEvaluator/FunctionEvaluator.h \
   #$$PWD/SRC/reliability/domain/functionEvaluator/MatlabEvaluator.h \
   $$PWD/SRC/reliability/domain/modulatingFunction/ConstantModulatingFunction.h \
   $$PWD/SRC/reliability/domain/modulatingFunction/GammaModulatingFunction.h \
   $$PWD/SRC/reliability/domain/modulatingFunction/KooModulatingFunction.h \
   $$PWD/SRC/reliability/domain/modulatingFunction/ModulatingFunction.h \
   $$PWD/SRC/reliability/domain/modulatingFunction/ModulatingFunctionIter.h \
   $$PWD/SRC/reliability/domain/modulatingFunction/TrapezoidalModulatingFunction.h \
   $$PWD/SRC/reliability/domain/performanceFunction/LimitStateFunction.h \
   $$PWD/SRC/reliability/domain/performanceFunction/LimitStateFunctionIter.h \
   $$PWD/SRC/reliability/domain/performanceFunction/PerformanceFunction.h \
   $$PWD/SRC/reliability/domain/performanceFunction/PerformanceFunctionIter.h \
   $$PWD/SRC/reliability/domain/spectrum/JonswapSpectrum.h \
   $$PWD/SRC/reliability/domain/spectrum/NarrowBandSpectrum.h \
   $$PWD/SRC/reliability/domain/spectrum/PointsSpectrum.h \
   $$PWD/SRC/reliability/domain/spectrum/Spectrum.h \
   $$PWD/SRC/reliability/domain/spectrum/SpectrumIter.h \
   $$PWD/SRC/reliability/domain/storage/FORMStorage.h \
   $$PWD/SRC/reliability/domain/storage/ReliabilityStorage.h \
   $$PWD/SRC/reliability/FEsensitivity/NewmarkSensitivityIntegrator.h \
   $$PWD/SRC/reliability/FEsensitivity/SensitivityAlgorithm.h \
   $$PWD/SRC/reliability/FEsensitivity/SensitivityIntegrator.h \
   $$PWD/SRC/reliability/FEsensitivity/StaticSensitivityIntegrator.h \
   $$PWD/SRC/domain/pattern/DiscretizedRandomProcessSeries.h \
   $$PWD/SRC/domain/pattern/SimulatedRandomProcessSeries.h \

SOURCES += \
   $$PWD/SRC/reliability/analysis/analysis/system/IPCM.cpp \
   $$PWD/SRC/reliability/analysis/analysis/system/MVNcdf.cpp \
   $$PWD/SRC/reliability/analysis/analysis/system/PCM.cpp \
   $$PWD/SRC/reliability/analysis/analysis/system/SCIS.cpp \
   $$PWD/SRC/reliability/analysis/analysis/BivariateDecomposition.cpp \
   $$PWD/SRC/reliability/analysis/analysis/ExperimentalPointRule1D.cpp \
   $$PWD/SRC/reliability/analysis/analysis/FORMAnalysis.cpp \
   $$PWD/SRC/reliability/analysis/analysis/FOSMAnalysis.cpp \
   #$$PWD/SRC/reliability/analysis/analysis/FragilityAnalysis.cpp \ #unknown type GradGEEvaluator
   $$PWD/SRC/reliability/analysis/analysis/GFunVisualizationAnalysis.cpp \
   $$PWD/SRC/reliability/analysis/analysis/GridPlane.cpp \
   $$PWD/SRC/reliability/analysis/analysis/ImportanceSamplingAnalysis.cpp \
   #$$PWD/SRC/reliability/analysis/analysis/MVFOSMAnalysis.cpp \ #unknown type GradGEEvaluator
   #$$PWD/SRC/reliability/analysis/analysis/OptimizationAnalysis.cpp \
   $$PWD/SRC/reliability/analysis/analysis/OrthogonalPlaneSamplingAnalysis.cpp \
   $$PWD/SRC/reliability/analysis/analysis/OutCrossingAnalysis.cpp \
   #$$PWD/SRC/reliability/analysis/analysis/ParametricReliabilityAnalysis.cpp \
   $$PWD/SRC/reliability/analysis/analysis/PrincipalAxis.cpp \
   $$PWD/SRC/reliability/analysis/analysis/ReliabilityAnalysis.cpp \
   $$PWD/SRC/reliability/analysis/analysis/RespSurfaceSimulation.cpp \
   $$PWD/SRC/reliability/analysis/analysis/SamplingAnalysis.cpp \
   $$PWD/SRC/reliability/analysis/analysis/SORMAnalysis.cpp \
   $$PWD/SRC/reliability/analysis/analysis/SurfaceDesign.cpp \
   $$PWD/SRC/reliability/analysis/analysis/SystemAnalysis.cpp \
   $$PWD/SRC/reliability/analysis/analysis/UniformExperimentalPointRule1D.cpp \
   $$PWD/SRC/reliability/analysis/analysis/UnivariateDecomposition.cpp \
   $$PWD/SRC/reliability/analysis/convergenceCheck/OptimalityConditionReliabilityConvergenceCheck.cpp \
   $$PWD/SRC/reliability/analysis/convergenceCheck/ReliabilityConvergenceCheck.cpp \
   $$PWD/SRC/reliability/analysis/convergenceCheck/StandardReliabilityConvergenceCheck.cpp \
   $$PWD/SRC/reliability/analysis/curvature/CurvatureFitting.cpp \
   $$PWD/SRC/reliability/analysis/curvature/CurvaturesBySearchAlgorithm.cpp \
   $$PWD/SRC/reliability/analysis/curvature/FindCurvatures.cpp \
   $$PWD/SRC/reliability/analysis/curvature/FirstPrincipalCurvature.cpp \
   $$PWD/SRC/reliability/analysis/designPoint/FindDesignPointAlgorithm.cpp \
   $$PWD/SRC/reliability/analysis/designPoint/SearchWithStepSizeAndStepDirection.cpp \
   $$PWD/SRC/reliability/analysis/direction/GradientProjectionSearchDirection.cpp \
   $$PWD/SRC/reliability/analysis/direction/HLRFSearchDirection.cpp \
   $$PWD/SRC/reliability/analysis/direction/PolakHeSearchDirectionAndMeritFunction.cpp \
   $$PWD/SRC/reliability/analysis/direction/SearchDirection.cpp \
   $$PWD/SRC/reliability/analysis/direction/SQPsearchDirectionMeritFunctionAndHessian.cpp \
#   $$PWD/SRC/reliability/analysis/gFunction/GFunEvaluator.cpp \
   $$PWD/SRC/reliability/analysis/gradient/FiniteDifferenceGradient.cpp \
   $$PWD/SRC/reliability/analysis/gradient/GradientEvaluator.cpp \
   $$PWD/SRC/reliability/analysis/gradient/ImplicitGradient.cpp \
   $$PWD/SRC/reliability/analysis/hessian/FiniteDifferenceHessian.cpp \
   $$PWD/SRC/reliability/analysis/hessian/HessianEvaluator.cpp \
   $$PWD/SRC/reliability/analysis/hessianApproximation/Hessian.cpp \
   $$PWD/SRC/reliability/analysis/hessianApproximation/HessianApproximation.cpp \
   $$PWD/SRC/reliability/analysis/meritFunction/AdkZhangMeritFunctionCheck.cpp \
   $$PWD/SRC/reliability/analysis/meritFunction/CriteriaReductionMeritFunctionCheck.cpp \
   $$PWD/SRC/reliability/analysis/meritFunction/MeritFunctionCheck.cpp \
   $$PWD/SRC/reliability/analysis/misc/CorrelatedStandardNormal.cpp \
   $$PWD/SRC/reliability/analysis/misc/MatrixOperations.cpp \
   $$PWD/SRC/reliability/analysis/randomNumber/CStdLibRandGenerator.cpp \
   $$PWD/SRC/reliability/analysis/randomNumber/RandomNumberGenerator.cpp \
#   $$PWD/SRC/reliability/analysis/rootFinding/ModNewtonRootFinding.cpp \
   $$PWD/SRC/reliability/analysis/rootFinding/RootFinding.cpp \
   $$PWD/SRC/reliability/analysis/rootFinding/SafeGuardedZeroFindingAlgorithm.cpp \
   $$PWD/SRC/reliability/analysis/rootFinding/SecantRootFinding.cpp \
   $$PWD/SRC/reliability/analysis/rootFinding/ZeroFindingAlgorithm.cpp \
   #$$PWD/SRC/reliability/analysis/sensitivity/FiniteDifferenceGradGEvaluator.cpp \
   #$$PWD/SRC/reliability/analysis/sensitivity/GradGEvaluator.cpp \
   #$$PWD/SRC/reliability/analysis/sensitivity/OpenSeesGradGEvaluator.cpp \
   $$PWD/SRC/reliability/analysis/stepSize/ArmijoStepSizeRule.cpp \
   $$PWD/SRC/reliability/analysis/stepSize/FixedStepSizeRule.cpp \
   $$PWD/SRC/reliability/analysis/stepSize/StepSizeRule.cpp \
#   $$PWD/SRC/reliability/analysis/telm/Analyzer.cpp \
#   $$PWD/SRC/reliability/analysis/telm/AnalyzerGradGEvaluator.cpp \
#   $$PWD/SRC/reliability/analysis/telm/CrossingRateAnalyzer.cpp \
#   $$PWD/SRC/reliability/analysis/telm/DynamciAnalyzer.cpp \
#   $$PWD/SRC/reliability/analysis/telm/FirstPassageAnalyzer.cpp \
#   $$PWD/SRC/reliability/analysis/telm/FOSeriesSimulation.cpp \
#   $$PWD/SRC/reliability/analysis/telm/GeneralRandGenerator.cpp \
#   $$PWD/SRC/reliability/analysis/telm/InitialPointBuilder.cpp \
#   $$PWD/SRC/reliability/analysis/telm/InitialStaticAnalysis.cpp \
#   $$PWD/SRC/reliability/analysis/telm/localMath.cpp \
#   $$PWD/SRC/reliability/analysis/telm/mersenne.cpp \
#   $$PWD/SRC/reliability/analysis/telm/mother.cpp \
#   $$PWD/SRC/reliability/analysis/telm/NewDiscretizedRandomProcessSeries.cpp \
#   $$PWD/SRC/reliability/analysis/telm/NewNewmarkSensitivityIntegrator.cpp \
#   $$PWD/SRC/reliability/analysis/telm/NewSearchWithStepSizeAndStepDirection.cpp \
#   $$PWD/SRC/reliability/analysis/telm/NewSensitivityAlgorithm.cpp \
#   $$PWD/SRC/reliability/analysis/telm/NewStandardLinearOscillatorAccelerationFilter.cpp \
#   $$PWD/SRC/reliability/analysis/telm/NewStaticSensitivityIntegrator.cpp \
#   $$PWD/SRC/reliability/analysis/telm/NewWhitenoiseFilter.cpp \
#   $$PWD/SRC/reliability/analysis/telm/NonStatFirstPassageAnalyzer.cpp \
#   $$PWD/SRC/reliability/analysis/telm/OutCrossingResults.cpp \
#   $$PWD/SRC/reliability/analysis/telm/PerformanceFunctionCoeff.cpp \
#   $$PWD/SRC/reliability/analysis/telm/PerformanceFunctionCoefficientIter.cpp \
#   $$PWD/SRC/reliability/analysis/telm/rancombi.cpp \
#   $$PWD/SRC/reliability/analysis/telm/RandomProcess.cpp \
#   $$PWD/SRC/reliability/analysis/telm/RandomVibrationSimulation.cpp \
#   $$PWD/SRC/reliability/analysis/telm/RandomVibrationSimulatorResult.cpp \
#   $$PWD/SRC/reliability/analysis/telm/ranrotb.cpp \
#   $$PWD/SRC/reliability/analysis/telm/ranrotw.cpp \
#   $$PWD/SRC/reliability/analysis/telm/ReliabilityDirectIntegrationAnalysis.cpp \
#   $$PWD/SRC/reliability/analysis/telm/ReliabilityStaticAnalysis.cpp \
#   $$PWD/SRC/reliability/analysis/telm/SelectLoadInitialStaticAnalysis.cpp \
#   $$PWD/SRC/reliability/analysis/telm/SmoothConcrete02.cpp \
#   $$PWD/SRC/reliability/analysis/telm/StatFirstPassageAnalyzer.cpp \
#   $$PWD/SRC/reliability/analysis/telm/StaticAnalyzer.cpp \
#   $$PWD/SRC/reliability/analysis/telm/ThresholdIncInitialPointBuilder.cpp \
#   $$PWD/SRC/reliability/analysis/telm/TimePoints.cpp \
#   $$PWD/SRC/reliability/analysis/telm/UniformGenerator.cpp \
   $$PWD/SRC/reliability/analysis/transformation/AllIndependentTransformation.cpp \
   $$PWD/SRC/reliability/analysis/transformation/NatafProbabilityTransformation.cpp \
   $$PWD/SRC/reliability/analysis/transformation/ProbabilityTransformation.cpp \
   $$PWD/SRC/reliability/domain/components/CorrelationCoefficient.cpp \
   $$PWD/SRC/reliability/domain/components/CorrelationCoefficientIter.cpp \
   $$PWD/SRC/reliability/domain/components/Cutset.cpp \
   $$PWD/SRC/reliability/domain/components/CutsetIter.cpp \
   $$PWD/SRC/reliability/domain/components/ParameterPositioner.cpp \
   $$PWD/SRC/reliability/domain/components/ParameterPositionerIter.cpp \
   $$PWD/SRC/reliability/domain/components/PrincipalPlane.cpp \
   $$PWD/SRC/reliability/domain/components/RandomVariable.cpp \
   $$PWD/SRC/domain/component/RVParameter.cpp \
   $$PWD/SRC/domain/component/DVParameter.cpp \
   $$PWD/SRC/optimization/domain/component/DesignVariable.cpp \
   $$PWD/SRC/optimization/domain/component/DesignVariableIter.cpp \
   $$PWD/SRC/optimization/domain/component/DesignVariablePositioner.cpp \
   $$PWD/SRC/optimization/domain/component/DesignVariablePositionerIter.cpp \
   $$PWD/SRC/reliability/domain/components/RandomVariableIter.cpp \
   $$PWD/SRC/reliability/domain/components/RandomVariablePositioner.cpp \
   $$PWD/SRC/reliability/domain/components/RandomVariablePositionerIter.cpp \
   $$PWD/SRC/reliability/domain/components/ReliabilityDomain.cpp \
   $$PWD/SRC/reliability/domain/components/ReliabilityDomainComponent.cpp \
   $$PWD/SRC/reliability/domain/distributions/BetaRV.cpp \
   $$PWD/SRC/reliability/domain/distributions/ChiSquareRV.cpp \
   $$PWD/SRC/reliability/domain/distributions/ExponentialRV.cpp \
   $$PWD/SRC/reliability/domain/distributions/GammaRV.cpp \
   $$PWD/SRC/reliability/domain/distributions/GumbelRV.cpp \
   $$PWD/SRC/reliability/domain/distributions/LaplaceRV.cpp \
   $$PWD/SRC/reliability/domain/distributions/LognormalRV.cpp \
   $$PWD/SRC/reliability/domain/distributions/NormalRV.cpp \
   $$PWD/SRC/reliability/domain/distributions/ParetoRV.cpp \
   $$PWD/SRC/reliability/domain/distributions/RayleighRV.cpp \
   $$PWD/SRC/reliability/domain/distributions/ShiftedExponentialRV.cpp \
   $$PWD/SRC/reliability/domain/distributions/ShiftedRayleighRV.cpp \
   $$PWD/SRC/reliability/domain/distributions/Type1LargestValueRV.cpp \
   $$PWD/SRC/reliability/domain/distributions/Type1SmallestValueRV.cpp \
   $$PWD/SRC/reliability/domain/distributions/Type2LargestValueRV.cpp \
   $$PWD/SRC/reliability/domain/distributions/Type3SmallestValueRV.cpp \
   $$PWD/SRC/reliability/domain/distributions/UniformRV.cpp \
   $$PWD/SRC/reliability/domain/distributions/UserDefinedRV.cpp \
   $$PWD/SRC/reliability/domain/distributions/WeibullRV.cpp \
   $$PWD/SRC/reliability/domain/filter/DeltaFilter.cpp \
   $$PWD/SRC/reliability/domain/filter/Filter.cpp \
   $$PWD/SRC/reliability/domain/filter/FilterIter.cpp \
   $$PWD/SRC/reliability/domain/filter/KooFilter.cpp \
   $$PWD/SRC/reliability/domain/filter/StandardLinearOscillatorAccelerationFilter.cpp \
   $$PWD/SRC/reliability/domain/filter/StandardLinearOscillatorDisplacementFilter.cpp \
   $$PWD/SRC/reliability/domain/filter/StandardLinearOscillatorVelocityFilter.cpp \
   $$PWD/SRC/reliability/domain/functionEvaluator/FunctionEvaluator.cpp \
   #$$PWD/SRC/reliability/domain/functionEvaluator/MatlabEvaluator.cpp \
   $$PWD/SRC/reliability/domain/modulatingFunction/ConstantModulatingFunction.cpp \
   $$PWD/SRC/reliability/domain/modulatingFunction/GammaModulatingFunction.cpp \
   $$PWD/SRC/reliability/domain/modulatingFunction/KooModulatingFunction.cpp \
   $$PWD/SRC/reliability/domain/modulatingFunction/ModulatingFunction.cpp \
   $$PWD/SRC/reliability/domain/modulatingFunction/ModulatingFunctionIter.cpp \
   $$PWD/SRC/reliability/domain/modulatingFunction/TrapezoidalModulatingFunction.cpp \
   $$PWD/SRC/reliability/domain/performanceFunction/LimitStateFunction.cpp \
   $$PWD/SRC/reliability/domain/performanceFunction/LimitStateFunctionIter.cpp \
   $$PWD/SRC/reliability/domain/performanceFunction/PerformanceFunction.cpp \
   $$PWD/SRC/reliability/domain/performanceFunction/PerformanceFunctionIter.cpp \
   $$PWD/SRC/reliability/domain/spectrum/JonswapSpectrum.cpp \
   $$PWD/SRC/reliability/domain/spectrum/NarrowBandSpectrum.cpp \
   $$PWD/SRC/reliability/domain/spectrum/PointsSpectrum.cpp \
   $$PWD/SRC/reliability/domain/spectrum/Spectrum.cpp \
   $$PWD/SRC/reliability/domain/spectrum/SpectrumIter.cpp \
   $$PWD/SRC/reliability/domain/storage/FORMStorage.cpp \
   $$PWD/SRC/reliability/domain/storage/ReliabilityStorage.cpp \
   $$PWD/SRC/reliability/FEsensitivity/NewmarkSensitivityIntegrator.cpp \
   $$PWD/SRC/reliability/FEsensitivity/SensitivityAlgorithm.cpp \
   $$PWD/SRC/reliability/FEsensitivity/SensitivityIntegrator.cpp \
   $$PWD/SRC/reliability/FEsensitivity/StaticSensitivityIntegrator.cpp \
   $$PWD/SRC/domain/pattern/DiscretizedRandomProcessSeries.cpp \
   $$PWD/SRC/domain/pattern/SimulatedRandomProcessSeries.cpp \


contains (DEFINES, _PYTHON){

HEADERS += \
    $$PWD/SRC/reliability/domain/distributions/PythonRV.h \

SOURCES += \
    $$PWD/SRC/reliability/domain/distributions/PythonRV.cpp \

}


contains (DEFINES, _TCL85){

HEADERS += \
   $$PWD/SRC/reliability/analysis/gFunction/TclGFunEvaluator.h \
   $$PWD/SRC/reliability/analysis/gFunction/TclMatlabGFunEvaluator.h \
   $$PWD/SRC/reliability/domain/functionEvaluator/TclEvaluator.h \
   $$PWD/SRC/reliability/tcl/TclReliabilityBuilder.h \
   $$PWD/SRC/reliability/analysis/analysis/DP_RSM_Sim.h \
   $$PWD/SRC/reliability/analysis/analysis/DP_RSM_Sim_TimeVariant.h \
   $$PWD/SRC/reliability/analysis/analysis/MonteCarloResponseAnalysis.h \
   $$PWD/SRC/reliability/analysis/analysis/MultiDimVisPrincPlane.h \
   $$PWD/SRC/reliability/analysis/telm/AnalyzerGFunEvaluator.h \
   $$PWD/SRC/reliability/analysis/telm/GFunEachStepEvaluator.h \
   $$PWD/SRC/reliability/analysis/telm/RandomVibrationAnalysis.h \
   $$PWD/SRC/reliability/analysis/gFunction/BasicGFunEvaluator.h \
   $$PWD/SRC/reliability/analysis/gFunction/OpenSeesGFunEvaluator.h \
   $$PWD/SRC/reliability/analysis/telm/NonStatRandomVibrationSimulation.h \
   $$PWD/SRC/reliability/analysis/telm/StatRandomVibrationSimulation.h \


SOURCES += \
   $$PWD/SRC/reliability/FEsensitivity/PFEMSensitivityIntegrator.cpp \
   $$PWD/SRC/reliability/tcl/TclReliabilityBuilder.cpp \
   $$PWD/SRC/reliability/analysis/gFunction/TclGFunEvaluator.cpp \
   $$PWD/SRC/reliability/analysis/gFunction/TclMatlabGFunEvaluator.cpp \
   $$PWD/SRC/reliability/domain/functionEvaluator/TclEvaluator.cpp \
   $$PWD/SRC/reliability/analysis/analysis/DP_RSM_Sim.cpp \
   $$PWD/SRC/reliability/analysis/analysis/DP_RSM_Sim_TimeVariant.cpp \
   $$PWD/SRC/reliability/analysis/analysis/MonteCarloResponseAnalysis.cpp \
   $$PWD/SRC/reliability/analysis/analysis/MultiDimVisPrincPlane.cpp \
   $$PWD/SRC/reliability/analysis/telm/AnalyzerGFunEvaluator.cpp \
   $$PWD/SRC/reliability/analysis/telm/GFunEachStepEvaluator.cpp \
   $$PWD/SRC/reliability/analysis/telm/RandomVibrationAnalysis.cpp \
   $$PWD/SRC/reliability/analysis/gFunction/BasicGFunEvaluator.cpp \
   $$PWD/SRC/reliability/analysis/gFunction/OpenSeesGFunEvaluator.cpp \
   $$PWD/SRC/reliability/analysis/telm/NonStatRandomVibrationSimulation.cpp \
   $$PWD/SRC/reliability/analysis/telm/StatRandomVibrationSimulation.cpp \

}

contains (DEFINES, _PFEM){

HEADERS += \
   $$PWD/SRC/reliability/FEsensitivity/PFEMSensitivityIntegrator.h \

SOURCES += \
   $$PWD/SRC/reliability/FEsensitivity/PFEMSensitivityIntegrator.cpp \

}
