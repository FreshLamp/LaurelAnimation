import SwiftUI

public struct LaurelShape: Shape {
    public var layer: Int = 0 // 0 = all, 1-13 = individual leaves

    public static let layerCount = 13

    public init(layer: Int = 0) {
        self.layer = layer
    }

    public func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height

        // Layer 1: Top-right leaf
        if layer == 0 || layer == 1 {
            var p = Path()
            p.move(to: CGPoint(x: 0.74079*width, y: 0.0018*height))
            p.addCurve(to: CGPoint(x: 0.77009*width, y: 0.01668*height), control1: CGPoint(x: 0.76088*width, y: 0), control2: CGPoint(x: 0.77176*width, y: 0.00631*height))
            p.addCurve(to: CGPoint(x: 0.69978*width, y: 0.09691*height), control1: CGPoint(x: 0.76339*width, y: 0.04507*height), control2: CGPoint(x: 0.73493*width, y: 0.07707*height))
            p.addCurve(to: CGPoint(x: 0.54911*width, y: 0.13431*height), control1: CGPoint(x: 0.66295*width, y: 0.11854*height), control2: CGPoint(x: 0.60268*width, y: 0.13341*height))
            p.addCurve(to: CGPoint(x: 0.52483*width, y: 0.12034*height), control1: CGPoint(x: 0.53237*width, y: 0.13477*height), control2: CGPoint(x: 0.52316*width, y: 0.12936*height))
            p.addCurve(to: CGPoint(x: 0.59515*width, y: 0.04102*height), control1: CGPoint(x: 0.52985*width, y: 0.09285*height), control2: CGPoint(x: 0.55748*width, y: 0.06085*height))
            p.addCurve(to: CGPoint(x: 0.74079*width, y: 0.0018*height), control1: CGPoint(x: 0.63198*width, y: 0.02118*height), control2: CGPoint(x: 0.68973*width, y: 0.00541*height))
            p.closeSubpath()
            path.addPath(p)
        }

        // Layer 2: Top-left leaf
        if layer == 0 || layer == 2 {
            var p = Path()
            p.move(to: CGPoint(x: 0.30134*width, y: 0.04688*height))
            p.addCurve(to: CGPoint(x: 0.34152*width, y: 0.04597*height), control1: CGPoint(x: 0.31222*width, y: 0.03831*height), control2: CGPoint(x: 0.32813*width, y: 0.03786*height))
            p.addCurve(to: CGPoint(x: 0.40346*width, y: 0.12665*height), control1: CGPoint(x: 0.375*width, y: 0.06716*height), control2: CGPoint(x: 0.40011*width, y: 0.09961*height))
            p.addCurve(to: CGPoint(x: 0.35993*width, y: 0.21184*height), control1: CGPoint(x: 0.40848*width, y: 0.1546*height), control2: CGPoint(x: 0.39007*width, y: 0.1884*height))
            p.addCurve(to: CGPoint(x: 0.3231*width, y: 0.21409*height), control1: CGPoint(x: 0.35073*width, y: 0.2195*height), control2: CGPoint(x: 0.33566*width, y: 0.2204*height))
            p.addCurve(to: CGPoint(x: 0.25614*width, y: 0.13251*height), control1: CGPoint(x: 0.28376*width, y: 0.19381*height), control2: CGPoint(x: 0.25698*width, y: 0.16091*height))
            p.addCurve(to: CGPoint(x: 0.30134*width, y: 0.04688*height), control1: CGPoint(x: 0.25279*width, y: 0.10502*height), control2: CGPoint(x: 0.27121*width, y: 0.07031*height))
            p.closeSubpath()
            path.addPath(p)
        }

        // Layer 3: Upper-right leaf
        if layer == 0 || layer == 3 {
            var p = Path()
            p.move(to: CGPoint(x: 0.55078*width, y: 0.1875*height))
            p.addCurve(to: CGPoint(x: 0.71233*width, y: 0.19832*height), control1: CGPoint(x: 0.60184*width, y: 0.18209*height), control2: CGPoint(x: 0.66629*width, y: 0.1866*height))
            p.addCurve(to: CGPoint(x: 0.7207*width, y: 0.21905*height), control1: CGPoint(x: 0.72991*width, y: 0.20282*height), control2: CGPoint(x: 0.73326*width, y: 0.21094*height))
            p.addCurve(to: CGPoint(x: 0.58008*width, y: 0.26502*height), control1: CGPoint(x: 0.68806*width, y: 0.24023*height), control2: CGPoint(x: 0.63114*width, y: 0.25871*height))
            p.addCurve(to: CGPoint(x: 0.41602*width, y: 0.2524*height), control1: CGPoint(x: 0.52734*width, y: 0.27269*height), control2: CGPoint(x: 0.46205*width, y: 0.26773*height))
            p.addCurve(to: CGPoint(x: 0.41016*width, y: 0.23302*height), control1: CGPoint(x: 0.40262*width, y: 0.24745*height), control2: CGPoint(x: 0.40011*width, y: 0.23978*height))
            p.addCurve(to: CGPoint(x: 0.55078*width, y: 0.1875*height), control1: CGPoint(x: 0.4428*width, y: 0.21094*height), control2: CGPoint(x: 0.49888*width, y: 0.19246*height))
            p.closeSubpath()
            path.addPath(p)
        }

        // Layer 4: Upper-left leaf
        if layer == 0 || layer == 4 {
            var p = Path()
            p.move(to: CGPoint(x: 0.113*width, y: 0.19832*height))
            p.addCurve(to: CGPoint(x: 0.15318*width, y: 0.19426*height), control1: CGPoint(x: 0.12221*width, y: 0.1893*height), control2: CGPoint(x: 0.13811*width, y: 0.18795*height))
            p.addCurve(to: CGPoint(x: 0.23437*width, y: 0.26998*height), control1: CGPoint(x: 0.19001*width, y: 0.21229*height), control2: CGPoint(x: 0.22349*width, y: 0.24249*height))
            p.addCurve(to: CGPoint(x: 0.21345*width, y: 0.35697*height), control1: CGPoint(x: 0.24609*width, y: 0.29748*height), control2: CGPoint(x: 0.23772*width, y: 0.33263*height))
            p.addCurve(to: CGPoint(x: 0.17829*width, y: 0.36193*height), control1: CGPoint(x: 0.20592*width, y: 0.36508*height), control2: CGPoint(x: 0.19169*width, y: 0.36734*height))
            p.addCurve(to: CGPoint(x: 0.0904*width, y: 0.28666*height), control1: CGPoint(x: 0.13477*width, y: 0.3457*height), control2: CGPoint(x: 0.09961*width, y: 0.3155*height))
            p.addCurve(to: CGPoint(x: 0.113*width, y: 0.19832*height), control1: CGPoint(x: 0.08036*width, y: 0.25916*height), control2: CGPoint(x: 0.08956*width, y: 0.22401*height))
            p.closeSubpath()
            path.addPath(p)
        }

        // Layer 5: Middle-right leaf
        if layer == 0 || layer == 5 {
            var p = Path()
            p.move(to: CGPoint(x: 0.39676*width, y: 0.31866*height))
            p.addCurve(to: CGPoint(x: 0.55915*width, y: 0.31686*height), control1: CGPoint(x: 0.44448*width, y: 0.30919*height), control2: CGPoint(x: 0.50977*width, y: 0.30874*height))
            p.addCurve(to: CGPoint(x: 0.57338*width, y: 0.33669*height), control1: CGPoint(x: 0.57757*width, y: 0.32046*height), control2: CGPoint(x: 0.58259*width, y: 0.32812*height))
            p.addCurve(to: CGPoint(x: 0.44531*width, y: 0.39393*height), control1: CGPoint(x: 0.54743*width, y: 0.36058*height), control2: CGPoint(x: 0.49637*width, y: 0.38356*height))
            p.addCurve(to: CGPoint(x: 0.27958*width, y: 0.39303*height), control1: CGPoint(x: 0.39509*width, y: 0.4052*height), control2: CGPoint(x: 0.32896*width, y: 0.40475*height))
            p.addCurve(to: CGPoint(x: 0.26869*width, y: 0.3741*height), control1: CGPoint(x: 0.26451*width, y: 0.38942*height), control2: CGPoint(x: 0.25949*width, y: 0.38176*height))
            p.addCurve(to: CGPoint(x: 0.39676*width, y: 0.31866*height), control1: CGPoint(x: 0.29548*width, y: 0.34976*height), control2: CGPoint(x: 0.34654*width, y: 0.32767*height))
            p.closeSubpath()
            path.addPath(p)
        }

        // Layer 6: Middle-left leaf
        if layer == 0 || layer == 6 {
            var p = Path()
            p.move(to: CGPoint(x: 0.0067*width, y: 0.41106*height))
            p.addCurve(to: CGPoint(x: 0.04102*width, y: 0.39979*height), control1: CGPoint(x: 0.00921*width, y: 0.40024*height), control2: CGPoint(x: 0.02344*width, y: 0.39573*height))
            p.addCurve(to: CGPoint(x: 0.16657*width, y: 0.45523*height), control1: CGPoint(x: 0.08873*width, y: 0.40971*height), control2: CGPoint(x: 0.13895*width, y: 0.43224*height))
            p.addCurve(to: CGPoint(x: 0.20257*width, y: 0.54177*height), control1: CGPoint(x: 0.19503*width, y: 0.48002*height), control2: CGPoint(x: 0.20926*width, y: 0.51427*height))
            p.addCurve(to: CGPoint(x: 0.1716*width, y: 0.55258*height), control1: CGPoint(x: 0.20089*width, y: 0.55078*height), control2: CGPoint(x: 0.1875*width, y: 0.55529*height))
            p.addCurve(to: CGPoint(x: 0.04185*width, y: 0.49805*height), control1: CGPoint(x: 0.12054*width, y: 0.54537*height), control2: CGPoint(x: 0.06864*width, y: 0.52374*height))
            p.addCurve(to: CGPoint(x: 0.0067*width, y: 0.41106*height), control1: CGPoint(x: 0.01423*width, y: 0.47326*height), control2: CGPoint(x: 0, y: 0.439*height))
            p.closeSubpath()
            path.addPath(p)
        }

        // Layer 7: Center-right leaf
        if layer == 0 || layer == 7 {
            var p = Path()
            p.move(to: CGPoint(x: 0.34989*width, y: 0.47145*height))
            p.addCurve(to: CGPoint(x: 0.5014*width, y: 0.4399*height), control1: CGPoint(x: 0.38839*width, y: 0.45388*height), control2: CGPoint(x: 0.44866*width, y: 0.44126*height))
            p.addCurve(to: CGPoint(x: 0.52818*width, y: 0.45613*height), control1: CGPoint(x: 0.52065*width, y: 0.43945*height), control2: CGPoint(x: 0.53069*width, y: 0.44621*height))
            p.addCurve(to: CGPoint(x: 0.44364*width, y: 0.53275*height), control1: CGPoint(x: 0.5173*width, y: 0.48407*height), control2: CGPoint(x: 0.48382*width, y: 0.51472*height))
            p.addCurve(to: CGPoint(x: 0.28711*width, y: 0.56295*height), control1: CGPoint(x: 0.4043*width, y: 0.55213*height), control2: CGPoint(x: 0.34152*width, y: 0.5643*height))
            p.addCurve(to: CGPoint(x: 0.26535*width, y: 0.54763*height), control1: CGPoint(x: 0.27121*width, y: 0.5625*height), control2: CGPoint(x: 0.262*width, y: 0.55619*height))
            p.addCurve(to: CGPoint(x: 0.34989*width, y: 0.47145*height), control1: CGPoint(x: 0.27455*width, y: 0.51968*height), control2: CGPoint(x: 0.30804*width, y: 0.48948*height))
            p.closeSubpath()
            path.addPath(p)
        }

        // Layer 8: Center leaf
        if layer == 0 || layer == 8 {
            var p = Path()
            p.move(to: CGPoint(x: 0.49554*width, y: 0.57692*height))
            p.addCurve(to: CGPoint(x: 0.52818*width, y: 0.58909*height), control1: CGPoint(x: 0.51479*width, y: 0.57377*height), control2: CGPoint(x: 0.52818*width, y: 0.57828*height))
            p.addCurve(to: CGPoint(x: 0.48465*width, y: 0.67473*height), control1: CGPoint(x: 0.53237*width, y: 0.61704*height), control2: CGPoint(x: 0.51395*width, y: 0.65084*height))
            p.addCurve(to: CGPoint(x: 0.34821*width, y: 0.72521*height), control1: CGPoint(x: 0.45619*width, y: 0.69907*height), control2: CGPoint(x: 0.40095*width, y: 0.7189*height))
            p.addCurve(to: CGPoint(x: 0.31808*width, y: 0.71304*height), control1: CGPoint(x: 0.33147*width, y: 0.72656*height), control2: CGPoint(x: 0.31975*width, y: 0.72206*height))
            p.addCurve(to: CGPoint(x: 0.36496*width, y: 0.62831*height), control1: CGPoint(x: 0.31557*width, y: 0.68419*height), control2: CGPoint(x: 0.33398*width, y: 0.65039*height))
            p.addCurve(to: CGPoint(x: 0.49554*width, y: 0.57692*height), control1: CGPoint(x: 0.39425*width, y: 0.60577*height), control2: CGPoint(x: 0.44699*width, y: 0.58549*height))
            p.closeSubpath()
            path.addPath(p)
        }

        // Layer 9: Lower-left leaf
        if layer == 0 || layer == 9 {
            var p = Path()
            p.move(to: CGPoint(x: 0.00502*width, y: 0.61659*height))
            p.addCurve(to: CGPoint(x: 0.03265*width, y: 0.60126*height), control1: CGPoint(x: 0.00167*width, y: 0.60622*height), control2: CGPoint(x: 0.01256*width, y: 0.60036*height))
            p.addCurve(to: CGPoint(x: 0.17913*width, y: 0.63822*height), control1: CGPoint(x: 0.08371*width, y: 0.60397*height), control2: CGPoint(x: 0.1423*width, y: 0.61929*height))
            p.addCurve(to: CGPoint(x: 0.2553*width, y: 0.7162*height), control1: CGPoint(x: 0.2168*width, y: 0.6567*height), control2: CGPoint(x: 0.24777*width, y: 0.68735*height))
            p.addCurve(to: CGPoint(x: 0.23103*width, y: 0.73107*height), control1: CGPoint(x: 0.25698*width, y: 0.72566*height), control2: CGPoint(x: 0.24777*width, y: 0.73152*height))
            p.addCurve(to: CGPoint(x: 0.07868*width, y: 0.69636*height), control1: CGPoint(x: 0.17662*width, y: 0.73107*height), control2: CGPoint(x: 0.11551*width, y: 0.7171*height))
            p.addCurve(to: CGPoint(x: 0.00502*width, y: 0.61659*height), control1: CGPoint(x: 0.04102*width, y: 0.67653*height), control2: CGPoint(x: 0.01088*width, y: 0.64453*height))
            p.closeSubpath()
            path.addPath(p)
        }

        // Layer 10: Lower-right leaf
        if layer == 0 || layer == 10 {
            var p = Path()
            p.move(to: CGPoint(x: 0.6077*width, y: 0.66797*height))
            p.addCurve(to: CGPoint(x: 0.64704*width, y: 0.67157*height), control1: CGPoint(x: 0.62277*width, y: 0.66031*height), control2: CGPoint(x: 0.63867*width, y: 0.66211*height))
            p.addCurve(to: CGPoint(x: 0.67048*width, y: 0.75947*height), control1: CGPoint(x: 0.67132*width, y: 0.69681*height), control2: CGPoint(x: 0.68052*width, y: 0.73197*height))
            p.addCurve(to: CGPoint(x: 0.58343*width, y: 0.83518*height), control1: CGPoint(x: 0.66211*width, y: 0.78876*height), control2: CGPoint(x: 0.62695*width, y: 0.81896*height))
            p.addCurve(to: CGPoint(x: 0.54827*width, y: 0.83023*height), control1: CGPoint(x: 0.57003*width, y: 0.84059*height), control2: CGPoint(x: 0.5558*width, y: 0.83879*height))
            p.addCurve(to: CGPoint(x: 0.52734*width, y: 0.74279*height), control1: CGPoint(x: 0.524*width, y: 0.80634*height), control2: CGPoint(x: 0.51563*width, y: 0.77118*height))
            p.addCurve(to: CGPoint(x: 0.6077*width, y: 0.66797*height), control1: CGPoint(x: 0.53739*width, y: 0.7162*height), control2: CGPoint(x: 0.57003*width, y: 0.688*height))
            p.closeSubpath()
            path.addPath(p)
        }

        // Layer 11: Bottom-right leaf
        if layer == 0 || layer == 11 {
            var p = Path()
            p.move(to: CGPoint(x: 0.77846*width, y: 0.76127*height))
            p.addCurve(to: CGPoint(x: 0.81864*width, y: 0.75992*height), control1: CGPoint(x: 0.79018*width, y: 0.75225*height), control2: CGPoint(x: 0.80525*width, y: 0.7518*height))
            p.addCurve(to: CGPoint(x: 0.88309*width, y: 0.84105*height), control1: CGPoint(x: 0.85463*width, y: 0.7811*height), control2: CGPoint(x: 0.87974*width, y: 0.81355*height))
            p.addCurve(to: CGPoint(x: 0.83454*width, y: 0.92668*height), control1: CGPoint(x: 0.88895*width, y: 0.87079*height), control2: CGPoint(x: 0.8697*width, y: 0.90505*height))
            p.addCurve(to: CGPoint(x: 0.79855*width, y: 0.92713*height), control1: CGPoint(x: 0.82366*width, y: 0.93389*height), control2: CGPoint(x: 0.80943*width, y: 0.93389*height))
            p.addCurve(to: CGPoint(x: 0.73577*width, y: 0.84555*height), control1: CGPoint(x: 0.76423*width, y: 0.90685*height), control2: CGPoint(x: 0.73912*width, y: 0.87395*height))
            p.addCurve(to: CGPoint(x: 0.77846*width, y: 0.76127*height), control1: CGPoint(x: 0.73326*width, y: 0.81806*height), control2: CGPoint(x: 0.75084*width, y: 0.78425*height))
            p.closeSubpath()
            path.addPath(p)
        }

        // Layer 12: Bottom-left leaf
        if layer == 0 || layer == 12 {
            var p = Path()
            p.move(to: CGPoint(x: 0.36496*width, y: 0.79237*height))
            p.addCurve(to: CGPoint(x: 0.49302*width, y: 0.84781*height), control1: CGPoint(x: 0.41518*width, y: 0.80138*height), control2: CGPoint(x: 0.46624*width, y: 0.82302*height))
            p.addCurve(to: CGPoint(x: 0.48214*width, y: 0.86628*height), control1: CGPoint(x: 0.50223*width, y: 0.85547*height), control2: CGPoint(x: 0.49805*width, y: 0.86268*height))
            p.addCurve(to: CGPoint(x: 0.31641*width, y: 0.86764*height), control1: CGPoint(x: 0.43192*width, y: 0.87801*height), control2: CGPoint(x: 0.36579*width, y: 0.87845*height))
            p.addCurve(to: CGPoint(x: 0.18834*width, y: 0.8113*height), control1: CGPoint(x: 0.26786*width, y: 0.85817*height), control2: CGPoint(x: 0.2168*width, y: 0.83564*height))
            p.addCurve(to: CGPoint(x: 0.20257*width, y: 0.79102*height), control1: CGPoint(x: 0.17913*width, y: 0.80228*height), control2: CGPoint(x: 0.18415*width, y: 0.79417*height))
            p.addCurve(to: CGPoint(x: 0.36496*width, y: 0.79237*height), control1: CGPoint(x: 0.25195*width, y: 0.78245*height), control2: CGPoint(x: 0.31724*width, y: 0.7829*height))
            p.closeSubpath()
            path.addPath(p)
        }

        // Layer 13: Bottom leaf
        if layer == 0 || layer == 13 {
            var p = Path()
            p.move(to: CGPoint(x: 0.60268*width, y: 0.91542*height))
            p.addCurve(to: CGPoint(x: 0.75335*width, y: 0.95102*height), control1: CGPoint(x: 0.65458*width, y: 0.91722*height), control2: CGPoint(x: 0.71484*width, y: 0.93119*height))
            p.addCurve(to: CGPoint(x: 0.75167*width, y: 0.97085*height), control1: CGPoint(x: 0.7659*width, y: 0.95733*height), control2: CGPoint(x: 0.76507*width, y: 0.96499*height))
            p.addCurve(to: CGPoint(x: 0.5918*width, y: 0.99429*height), control1: CGPoint(x: 0.70898*width, y: 0.98843*height), control2: CGPoint(x: 0.64537*width, y: 0.99745*height))
            p.addCurve(to: CGPoint(x: 0.44113*width, y: 0.95778*height), control1: CGPoint(x: 0.54074*width, y: 0.99158*height), control2: CGPoint(x: 0.48047*width, y: 0.97716*height))
            p.addCurve(to: CGPoint(x: 0.44615*width, y: 0.9357*height), control1: CGPoint(x: 0.42606*width, y: 0.95012*height), control2: CGPoint(x: 0.42857*width, y: 0.94155*height))
            p.addCurve(to: CGPoint(x: 0.60268*width, y: 0.91542*height), control1: CGPoint(x: 0.48884*width, y: 0.92128*height), control2: CGPoint(x: 0.55162*width, y: 0.91316*height))
            p.closeSubpath()
            path.addPath(p)
        }

        return path
    }
}
