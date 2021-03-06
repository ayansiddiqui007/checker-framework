#!/bin/sh
# Remove Checker Framework annotations (except trusted ones) from all files under the current directory.

PREPLACE="$(dirname "$(readlink -f "$0")")"/.plume-scripts/preplace

"$PREPLACE" '^import org.checkerframework(?!.*InternedDistinct).*\n' ''
"$PREPLACE" '^ *\@(Deterministic|EnsuresNonNull|FormatMethod|Pure|RequiresNonNull|SideEffectFree)(\([^()]*\))?\n' ''
"$PREPLACE" '\@A(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@ACCBottom(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Acceleration(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@ACCTop(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@AlwaysSafe(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Angle(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@AnnoWithStringArg(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Area(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@ArrayLen(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@ArrayLenRange(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@ArrayWithoutPackage(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@AwtAlphaCompositingRule(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@AwtColorSpace(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@AwtCursorType(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@AwtFlowLayout(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@B(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@BinaryName(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@BinaryNameInUnnamedPackage(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@BinaryNameOrPrimitiveType(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@BinaryNameWithoutPackage(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@BoolVal(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Bottom(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@BottomQualifier(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@BottomThis(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@BottomVal(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@C(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@CalledMethods(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@CalledMethodsBottom(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@CalledMethodsPredicate(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@CalledMethodsTop(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@CanonicalName(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@CanonicalNameOrEmpty(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@CCBottom(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@CCTop(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@cd(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@ClassBound(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@ClassGetName(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@ClassGetSimpleName(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@ClassVal(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@ClassValBottom(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@CompilerMessageKey(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@CompilerMessageKeyBottom(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Constant(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Critical(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Current(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@D(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@DefaultType(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@degrees(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Det(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@DotSeparatedIdentifiers(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@DotSeparatedIdentifiersOrPrimitiveType(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@DoubleVal(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@E(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Encrypted(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@EnumVal(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Even(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@F(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@FBCBottom(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@FEBottom(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@FEBot(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Fenum(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@FenumBottom(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@FenumTop(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@FETop(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@FieldDescriptor(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@FieldDescriptorForPrimitive(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@FieldDescriptorForPrimitiveOrArrayInUnnamedPackage(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@FieldDescriptorWithoutPackage(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@FlowExp(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Format(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@FormatBottom(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@FqBinaryName(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Frequency(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@FullyQualifiedName(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@g(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@GTENegativeOne(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@GuardedBy(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@GuardedByBottom(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@GuardedByUnknown(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@GuardSatisfied(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@h(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@H1Bot(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@H1Invalid(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@H1Poly(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@H1S1(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@H1S2(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@H1Top(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@H2Bot(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@H2Poly(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@H2S1(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@H2S2(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@H2Top(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Hz(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@I18nFormat(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@I18nFormatBottom(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@I18nFormatFor(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@I18nInvalidFormat(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@I18nUnknownFormat(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Identifier(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@IdentifierOrArray(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@IdentifierOrPrimitiveType(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@ImplicitAnno(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@IndexFor(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@IndexOrHigh(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@IndexOrLow(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Initialized(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@InitializedFields(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@InitializedFieldsBottom(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@InitializedFieldsPredicate(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@InternalForm(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Interned(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@IntRange(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@IntVal(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@InvalidFormat(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@K(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@KeyFor(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@KeyForBottom(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@KeyForType(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@kg(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@kHz(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@km(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@km2(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@kmPERh(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@LbTop(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@LB_TOP(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@LeakedToResult(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Length(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@LengthOf(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@LessThan(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@LessThanBottom(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@LessThanUnknown(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@LocalizableKey(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@LocalizableKeyBottom(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Localized(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@LowerBoundBottom(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@LowerBoundUnknown(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@LTEqLengthOf(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@LTLengthOf(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@LTOMLengthOf(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Luminance(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@m(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@m2(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Mass(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@MatchesRegex(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@MaybeAliased(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@MaybeDerivedFromConstant(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@MaybePresent(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@MaybeThis(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@MethodDescriptor(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@MethodVal(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@MethodValBottom(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@min(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@MinLen(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@mm(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@mm2(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@mol(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@MonotonicNonNull(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@MonotonicNonNullType(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@MonotonicOdd(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@mPERs(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@mPERs2(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@NegativeIndexFor(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@NonConstant(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@NonDet(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@NonLeaked(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@NonNegative(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@NonNull(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@NonNullType(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@NonRaw(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@NotCalledMethods(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@NotNull(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@NotQualifier(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@NTDBottom(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@NTDMiddle(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@NTDSide(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@NTDTop(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Nullable(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@NullableType(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Odd(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@OrderNonDet(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Parent(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@PatternA(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@PatternAB(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@PatternAC(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@PatternB(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@PatternBC(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@PatternBottomFull(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@PatternBottomPartial(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@PatternC(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@PatternUnknown(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Poly(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@PolyAll(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@PolyConstant(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@PolyDet(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@PolyEncrypted(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@PolyFenum(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@PolyIndex(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@PolyInitializedFields(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@PolyInterned(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@PolyKeyFor(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@PolyLength(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@PolyLowerBound(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@PolyNull(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@PolyNullType(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@PolyPresent(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@PolyRaw(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@PolyReflection(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@PolyRegex(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@PolySameLen(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@PolySignature(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@PolySigned(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@PolyTainted(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@PolyTestAccumulation(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@PolyTypeDeclDefault(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@PolyUI(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@PolyUnit(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@PolyUpperBound(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@PolyValue(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Positive(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Present(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@PrimitiveType(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@PropertyKey(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@PropertyKeyBottom(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@PurityUnqualified(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Qualifier(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@radians(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Raw(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@ReflectBottom(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Regex(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@RegexBottom(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@ReportUnqualified(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@s(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@SameLen(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@SameLenBottom(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@SameLenUnknown(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@SearchIndexBottom(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@SearchIndexFor(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@SearchIndexUnknown(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Sibling1(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Sibling2(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@SiblingWithFields(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@SignatureBottom(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Signed(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@SignednessBottom(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@SignednessGlb(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@SignedPositive(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@SignedPositiveFromUnsigned(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Speed(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@StringVal(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@SubQual(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Substance(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@SubstringIndexBottom(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@SubstringIndexFor(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@SubstringIndexUnknown(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@SuperQual(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@SwingBoxOrientation(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@SwingCompassDirection(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@SwingElementOrientation(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@SwingHorizontalOrientation(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@SwingSplitPaneOrientation(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@SwingTextOrientation(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@SwingTitleJustification(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@SwingTitlePosition(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@SwingVerticalOrientation(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Tainted(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Temperature(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@TestAccumulation(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@TestAccumulationBottom(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@TestAccumulationPredicate(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@This(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Time(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Top(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@TypeDeclDefaultBottom(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@TypeDeclDefaultMiddle(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@TypeDeclDefaultTop(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@UbTop(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@UB_TOP(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@UI(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@UnderInitialization(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Unique(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@UnitsBottom(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@UnknownClass(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@UnknownCompilerMessageKey(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@UnknownFormat(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@UnknownInitialization(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@UnknownInterned(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@UnknownKeyFor(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@UnknownLocalizableKey(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@UnknownLocalized(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@UnknownMethod(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@UnknownPropertyKey(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@UnknownRegex(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@UnknownSignedness(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@UnknownThis(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@UnknownUnits(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@UnknownVal(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Unsigned(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Untainted(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@UpperBoundBottom(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@UpperBoundUnknown(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@Value(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\@WholeProgramInferenceBottom(\([^()"]*("[^"]*"[^()"]*)*\))? ' ''
"$PREPLACE" '\([ \n]*[A-Za-z][A-Za-z0-9_]*(<[^<>]*>)? this\)' '()'
"$PREPLACE" '\([ \n]*[A-Za-z][A-Za-z0-9_]*(<[^<>]*>)? this,[ \t]*' '('
