// ignore_for_file: public_member_api_docs, sort_constructors_first
// To parse this JSON data, do
//
//     final countryState = countryStateFromJson(jsonString);

import 'dart:convert';

CountryState countryStateFromJson(String str) =>
    CountryState.fromJson(json.decode(str));

String countryStateToJson(CountryState data) => json.encode(data.toJson());

class CountryState {
  List<dynamic> af;
  Al al;
  Ao ao;
  Ar ar;
  List<dynamic> at;
  Au au;
  List<dynamic> ax;
  Map<String, String> bd;
  List<dynamic> be;
  Bg bg;
  List<dynamic> bh;
  List<dynamic> bi;
  Bj bj;
  Bo bo;
  Br br;
  Ca ca;
  Ch ch;
  Cl cl;
  Cn cn;
  Co co;
  Cr cr;
  List<dynamic> cz;
  De de;
  List<dynamic> dk;
  Do countryStateDo;
  Dz dz;
  List<dynamic> ee;
  Ec ec;
  Eg eg;
  Map<String, String> es;
  List<dynamic> et;
  List<dynamic> fi;
  List<dynamic> fr;
  List<dynamic> gf;
  Gh gh;
  List<dynamic> gp;
  Gr gr;
  Gt gt;
  Hk hk;
  Hn hn;
  Hu hu;
  Id id;
  Ie ie;
  In countryStateIn;
  Ir ir;
  List<dynamic> countryStateIs;
  Map<String, String> it;
  List<dynamic> il;
  List<dynamic> im;
  Jm jm;
  Jp jp;
  Ke ke;
  Kn kn;
  List<dynamic> kr;
  List<dynamic> kw;
  La la;
  List<dynamic> lb;
  List<dynamic> li;
  Lr lr;
  List<dynamic> lu;
  Md md;
  List<dynamic> mf;
  List<dynamic> mq;
  List<dynamic> mt;
  Mx mx;
  My my;
  Mz mz;
  Na na;
  Ng ng;
  List<dynamic> nl;
  List<dynamic> no;
  Np np;
  Ni ni;
  Nz nz;
  Pa pa;
  Pe pe;
  Map<String, String> ph;
  Pk pk;
  List<dynamic> pl;
  List<dynamic> pr;
  List<dynamic> pt;
  Py py;
  List<dynamic> re;
  Ro ro;
  Sn sn;
  List<dynamic> sg;
  List<dynamic> sk;
  List<dynamic> si;
  Sv sv;
  Map<String, String> th;
  Map<String, String> tr;
  Tz tz;
  List<dynamic> lk;
  Rs rs;
  List<dynamic> rw;
  List<dynamic> se;
  Ua ua;
  Map<String, String> ug;
  Map<String, String> um;
  Map<String, String> us;
  Uy uy;
  Ve ve;
  List<dynamic> vn;
  List<dynamic> yt;
  Za za;
  Zm zm;

  CountryState({
    required this.af,
    required this.al,
    required this.ao,
    required this.ar,
    required this.at,
    required this.au,
    required this.ax,
    required this.bd,
    required this.be,
    required this.bg,
    required this.bh,
    required this.bi,
    required this.bj,
    required this.bo,
    required this.br,
    required this.ca,
    required this.ch,
    required this.cl,
    required this.cn,
    required this.co,
    required this.cr,
    required this.cz,
    required this.de,
    required this.dk,
    required this.countryStateDo,
    required this.dz,
    required this.ee,
    required this.ec,
    required this.eg,
    required this.es,
    required this.et,
    required this.fi,
    required this.fr,
    required this.gf,
    required this.gh,
    required this.gp,
    required this.gr,
    required this.gt,
    required this.hk,
    required this.hn,
    required this.hu,
    required this.id,
    required this.ie,
    required this.countryStateIn,
    required this.ir,
    required this.countryStateIs,
    required this.it,
    required this.il,
    required this.im,
    required this.jm,
    required this.jp,
    required this.ke,
    required this.kn,
    required this.kr,
    required this.kw,
    required this.la,
    required this.lb,
    required this.li,
    required this.lr,
    required this.lu,
    required this.md,
    required this.mf,
    required this.mq,
    required this.mt,
    required this.mx,
    required this.my,
    required this.mz,
    required this.na,
    required this.ng,
    required this.nl,
    required this.no,
    required this.np,
    required this.ni,
    required this.nz,
    required this.pa,
    required this.pe,
    required this.ph,
    required this.pk,
    required this.pl,
    required this.pr,
    required this.pt,
    required this.py,
    required this.re,
    required this.ro,
    required this.sn,
    required this.sg,
    required this.sk,
    required this.si,
    required this.sv,
    required this.th,
    required this.tr,
    required this.tz,
    required this.lk,
    required this.rs,
    required this.rw,
    required this.se,
    required this.ua,
    required this.ug,
    required this.um,
    required this.us,
    required this.uy,
    required this.ve,
    required this.vn,
    required this.yt,
    required this.za,
    required this.zm,
  });

  factory CountryState.fromJson(Map<String, dynamic> json) => CountryState(
        af: List<dynamic>.from(json["AF"].map((x) => x)),
        al: Al.fromJson(json["AL"]),
        ao: Ao.fromJson(json["AO"]),
        ar: Ar.fromJson(json["AR"]),
        at: List<dynamic>.from(json["AT"].map((x) => x)),
        au: Au.fromJson(json["AU"]),
        ax: List<dynamic>.from(json["AX"].map((x) => x)),
        bd: Map.from(json["BD"]).map((k, v) => MapEntry<String, String>(k, v)),
        be: List<dynamic>.from(json["BE"].map((x) => x)),
        bg: Bg.fromJson(json["BG"]),
        bh: List<dynamic>.from(json["BH"].map((x) => x)),
        bi: List<dynamic>.from(json["BI"].map((x) => x)),
        bj: Bj.fromJson(json["BJ"]),
        bo: Bo.fromJson(json["BO"]),
        br: Br.fromJson(json["BR"]),
        ca: Ca.fromJson(json["CA"]),
        ch: Ch.fromJson(json["CH"]),
        cl: Cl.fromJson(json["CL"]),
        cn: Cn.fromJson(json["CN"]),
        co: Co.fromJson(json["CO"]),
        cr: Cr.fromJson(json["CR"]),
        cz: List<dynamic>.from(json["CZ"].map((x) => x)),
        de: De.fromJson(json["DE"]),
        dk: List<dynamic>.from(json["DK"].map((x) => x)),
        countryStateDo: Do.fromJson(json["DO"]),
        dz: Dz.fromJson(json["DZ"]),
        ee: List<dynamic>.from(json["EE"].map((x) => x)),
        ec: Ec.fromJson(json["EC"]),
        eg: Eg.fromJson(json["EG"]),
        es: Map.from(json["ES"]).map((k, v) => MapEntry<String, String>(k, v)),
        et: List<dynamic>.from(json["ET"].map((x) => x)),
        fi: List<dynamic>.from(json["FI"].map((x) => x)),
        fr: List<dynamic>.from(json["FR"].map((x) => x)),
        gf: List<dynamic>.from(json["GF"].map((x) => x)),
        gh: Gh.fromJson(json["GH"]),
        gp: List<dynamic>.from(json["GP"].map((x) => x)),
        gr: Gr.fromJson(json["GR"]),
        gt: Gt.fromJson(json["GT"]),
        hk: Hk.fromJson(json["HK"]),
        hn: Hn.fromJson(json["HN"]),
        hu: Hu.fromJson(json["HU"]),
        id: Id.fromJson(json["ID"]),
        ie: Ie.fromJson(json["IE"]),
        countryStateIn: In.fromJson(json["IN"]),
        ir: Ir.fromJson(json["IR"]),
        countryStateIs: List<dynamic>.from(json["IS"].map((x) => x)),
        it: Map.from(json["IT"]).map((k, v) => MapEntry<String, String>(k, v)),
        il: List<dynamic>.from(json["IL"].map((x) => x)),
        im: List<dynamic>.from(json["IM"].map((x) => x)),
        jm: Jm.fromJson(json["JM"]),
        jp: Jp.fromJson(json["JP"]),
        ke: Ke.fromJson(json["KE"]),
        kn: Kn.fromJson(json["KN"]),
        kr: List<dynamic>.from(json["KR"].map((x) => x)),
        kw: List<dynamic>.from(json["KW"].map((x) => x)),
        la: La.fromJson(json["LA"]),
        lb: List<dynamic>.from(json["LB"].map((x) => x)),
        li: List<dynamic>.from(json["LI"].map((x) => x)),
        lr: Lr.fromJson(json["LR"]),
        lu: List<dynamic>.from(json["LU"].map((x) => x)),
        md: Md.fromJson(json["MD"]),
        mf: List<dynamic>.from(json["MF"].map((x) => x)),
        mq: List<dynamic>.from(json["MQ"].map((x) => x)),
        mt: List<dynamic>.from(json["MT"].map((x) => x)),
        mx: Mx.fromJson(json["MX"]),
        my: My.fromJson(json["MY"]),
        mz: Mz.fromJson(json["MZ"]),
        na: Na.fromJson(json["NA"]),
        ng: Ng.fromJson(json["NG"]),
        nl: List<dynamic>.from(json["NL"].map((x) => x)),
        no: List<dynamic>.from(json["NO"].map((x) => x)),
        np: Np.fromJson(json["NP"]),
        ni: Ni.fromJson(json["NI"]),
        nz: Nz.fromJson(json["NZ"]),
        pa: Pa.fromJson(json["PA"]),
        pe: Pe.fromJson(json["PE"]),
        ph: Map.from(json["PH"]).map((k, v) => MapEntry<String, String>(k, v)),
        pk: Pk.fromJson(json["PK"]),
        pl: List<dynamic>.from(json["PL"].map((x) => x)),
        pr: List<dynamic>.from(json["PR"].map((x) => x)),
        pt: List<dynamic>.from(json["PT"].map((x) => x)),
        py: Py.fromJson(json["PY"]),
        re: List<dynamic>.from(json["RE"].map((x) => x)),
        ro: Ro.fromJson(json["RO"]),
        sn: Sn.fromJson(json["SN"]),
        sg: List<dynamic>.from(json["SG"].map((x) => x)),
        sk: List<dynamic>.from(json["SK"].map((x) => x)),
        si: List<dynamic>.from(json["SI"].map((x) => x)),
        sv: Sv.fromJson(json["SV"]),
        th: Map.from(json["TH"]).map((k, v) => MapEntry<String, String>(k, v)),
        tr: Map.from(json["TR"]).map((k, v) => MapEntry<String, String>(k, v)),
        tz: Tz.fromJson(json["TZ"]),
        lk: List<dynamic>.from(json["LK"].map((x) => x)),
        rs: Rs.fromJson(json["RS"]),
        rw: List<dynamic>.from(json["RW"].map((x) => x)),
        se: List<dynamic>.from(json["SE"].map((x) => x)),
        ua: Ua.fromJson(json["UA"]),
        ug: Map.from(json["UG"]).map((k, v) => MapEntry<String, String>(k, v)),
        um: Map.from(json["UM"]).map((k, v) => MapEntry<String, String>(k, v)),
        us: Map.from(json["US"]).map((k, v) => MapEntry<String, String>(k, v)),
        uy: Uy.fromJson(json["UY"]),
        ve: Ve.fromJson(json["VE"]),
        vn: List<dynamic>.from(json["VN"].map((x) => x)),
        yt: List<dynamic>.from(json["YT"].map((x) => x)),
        za: Za.fromJson(json["ZA"]),
        zm: Zm.fromJson(json["ZM"]),
      );

  Map<String, dynamic> toJson() => {
        "AF": List<dynamic>.from(af.map((x) => x)),
        "AL": al.toJson(),
        "AO": ao.toJson(),
        "AR": ar.toJson(),
        "AT": List<dynamic>.from(at.map((x) => x)),
        "AU": au.toJson(),
        "AX": List<dynamic>.from(ax.map((x) => x)),
        "BD": Map.from(bd).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "BE": List<dynamic>.from(be.map((x) => x)),
        "BG": bg.toJson(),
        "BH": List<dynamic>.from(bh.map((x) => x)),
        "BI": List<dynamic>.from(bi.map((x) => x)),
        "BJ": bj.toJson(),
        "BO": bo.toJson(),
        "BR": br.toJson(),
        "CA": ca.toJson(),
        "CH": ch.toJson(),
        "CL": cl.toJson(),
        "CN": cn.toJson(),
        "CO": co.toJson(),
        "CR": cr.toJson(),
        "CZ": List<dynamic>.from(cz.map((x) => x)),
        "DE": de.toJson(),
        "DK": List<dynamic>.from(dk.map((x) => x)),
        "DO": countryStateDo.toJson(),
        "DZ": dz.toJson(),
        "EE": List<dynamic>.from(ee.map((x) => x)),
        "EC": ec.toJson(),
        "EG": eg.toJson(),
        "ES": Map.from(es).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "ET": List<dynamic>.from(et.map((x) => x)),
        "FI": List<dynamic>.from(fi.map((x) => x)),
        "FR": List<dynamic>.from(fr.map((x) => x)),
        "GF": List<dynamic>.from(gf.map((x) => x)),
        "GH": gh.toJson(),
        "GP": List<dynamic>.from(gp.map((x) => x)),
        "GR": gr.toJson(),
        "GT": gt.toJson(),
        "HK": hk.toJson(),
        "HN": hn.toJson(),
        "HU": hu.toJson(),
        "ID": id.toJson(),
        "IE": ie.toJson(),
        "IN": countryStateIn.toJson(),
        "IR": ir.toJson(),
        "IS": List<dynamic>.from(countryStateIs.map((x) => x)),
        "IT": Map.from(it).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "IL": List<dynamic>.from(il.map((x) => x)),
        "IM": List<dynamic>.from(im.map((x) => x)),
        "JM": jm.toJson(),
        "JP": jp.toJson(),
        "KE": ke.toJson(),
        "KN": kn.toJson(),
        "KR": List<dynamic>.from(kr.map((x) => x)),
        "KW": List<dynamic>.from(kw.map((x) => x)),
        "LA": la.toJson(),
        "LB": List<dynamic>.from(lb.map((x) => x)),
        "LI": List<dynamic>.from(li.map((x) => x)),
        "LR": lr.toJson(),
        "LU": List<dynamic>.from(lu.map((x) => x)),
        "MD": md.toJson(),
        "MF": List<dynamic>.from(mf.map((x) => x)),
        "MQ": List<dynamic>.from(mq.map((x) => x)),
        "MT": List<dynamic>.from(mt.map((x) => x)),
        "MX": mx.toJson(),
        "MY": my.toJson(),
        "MZ": mz.toJson(),
        "NA": na.toJson(),
        "NG": ng.toJson(),
        "NL": List<dynamic>.from(nl.map((x) => x)),
        "NO": List<dynamic>.from(no.map((x) => x)),
        "NP": np.toJson(),
        "NI": ni.toJson(),
        "NZ": nz.toJson(),
        "PA": pa.toJson(),
        "PE": pe.toJson(),
        "PH": Map.from(ph).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "PK": pk.toJson(),
        "PL": List<dynamic>.from(pl.map((x) => x)),
        "PR": List<dynamic>.from(pr.map((x) => x)),
        "PT": List<dynamic>.from(pt.map((x) => x)),
        "PY": py.toJson(),
        "RE": List<dynamic>.from(re.map((x) => x)),
        "RO": ro.toJson(),
        "SN": sn.toJson(),
        "SG": List<dynamic>.from(sg.map((x) => x)),
        "SK": List<dynamic>.from(sk.map((x) => x)),
        "SI": List<dynamic>.from(si.map((x) => x)),
        "SV": sv.toJson(),
        "TH": Map.from(th).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "TR": Map.from(tr).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "TZ": tz.toJson(),
        "LK": List<dynamic>.from(lk.map((x) => x)),
        "RS": rs.toJson(),
        "RW": List<dynamic>.from(rw.map((x) => x)),
        "SE": List<dynamic>.from(se.map((x) => x)),
        "UA": ua.toJson(),
        "UG": Map.from(ug).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "UM": Map.from(um).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "US": Map.from(us).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "UY": uy.toJson(),
        "VE": ve.toJson(),
        "VN": List<dynamic>.from(vn.map((x) => x)),
        "YT": List<dynamic>.from(yt.map((x) => x)),
        "ZA": za.toJson(),
        "ZM": zm.toJson(),
      };

  @override
  String toString() {
    return 'CountryState(af: $af, al: $al, ao: $ao, ar: $ar, at: $at, au: $au, ax: $ax, bd: $bd, be: $be, bg: $bg, bh: $bh, bi: $bi, bj: $bj, bo: $bo, br: $br, ca: $ca, ch: $ch, cl: $cl, cn: $cn, co: $co, cr: $cr, cz: $cz, de: $de, dk: $dk, countryStateDo: $countryStateDo, dz: $dz, ee: $ee, ec: $ec, eg: $eg, es: $es, et: $et, fi: $fi, fr: $fr, gf: $gf, gh: $gh, gp: $gp, gr: $gr, gt: $gt, hk: $hk, hn: $hn, hu: $hu, id: $id, ie: $ie, countryStateIn: $countryStateIn, ir: $ir, countryStateIs: $countryStateIs, it: $it, il: $il, im: $im, jm: $jm, jp: $jp, ke: $ke, kn: $kn, kr: $kr, kw: $kw, la: $la, lb: $lb, li: $li, lr: $lr, lu: $lu, md: $md, mf: $mf, mq: $mq, mt: $mt, mx: $mx, my: $my, mz: $mz, na: $na, ng: $ng, nl: $nl, no: $no, np: $np, ni: $ni, nz: $nz, pa: $pa, pe: $pe, ph: $ph, pk: $pk, pl: $pl, pr: $pr, pt: $pt, py: $py, re: $re, ro: $ro, sn: $sn, sg: $sg, sk: $sk, si: $si, sv: $sv, th: $th, tr: $tr, tz: $tz, lk: $lk, rs: $rs, rw: $rw, se: $se, ua: $ua, ug: $ug, um: $um, us: $us, uy: $uy, ve: $ve, vn: $vn, yt: $yt, za: $za, zm: $zm)';
  }
}

class Al {
  String al01;
  String al09;
  String al02;
  String al03;
  String al04;
  String al05;
  String al06;
  String al07;
  String al08;
  String al10;
  String al11;
  String al12;

  Al({
    required this.al01,
    required this.al09,
    required this.al02,
    required this.al03,
    required this.al04,
    required this.al05,
    required this.al06,
    required this.al07,
    required this.al08,
    required this.al10,
    required this.al11,
    required this.al12,
  });

  factory Al.fromJson(Map<String, dynamic> json) => Al(
        al01: json["AL-01"],
        al09: json["AL-09"],
        al02: json["AL-02"],
        al03: json["AL-03"],
        al04: json["AL-04"],
        al05: json["AL-05"],
        al06: json["AL-06"],
        al07: json["AL-07"],
        al08: json["AL-08"],
        al10: json["AL-10"],
        al11: json["AL-11"],
        al12: json["AL-12"],
      );

  Map<String, dynamic> toJson() => {
        "AL-01": al01,
        "AL-09": al09,
        "AL-02": al02,
        "AL-03": al03,
        "AL-04": al04,
        "AL-05": al05,
        "AL-06": al06,
        "AL-07": al07,
        "AL-08": al08,
        "AL-10": al10,
        "AL-11": al11,
        "AL-12": al12,
      };

  @override
  String toString() {
    return 'Al(al01: $al01, al09: $al09, al02: $al02, al03: $al03, al04: $al04, al05: $al05, al06: $al06, al07: $al07, al08: $al08, al10: $al10, al11: $al11, al12: $al12)';
  }
}

class Ao {
  String bgo;
  String blu;
  String bie;
  String cab;
  String cnn;
  String hua;
  String hui;
  String ccu;
  String cno;
  String cus;
  String lua;
  String lno;
  String lsu;
  String mal;
  String mox;
  String nam;
  String uig;
  String zai;

  Ao({
    required this.bgo,
    required this.blu,
    required this.bie,
    required this.cab,
    required this.cnn,
    required this.hua,
    required this.hui,
    required this.ccu,
    required this.cno,
    required this.cus,
    required this.lua,
    required this.lno,
    required this.lsu,
    required this.mal,
    required this.mox,
    required this.nam,
    required this.uig,
    required this.zai,
  });

  factory Ao.fromJson(Map<String, dynamic> json) => Ao(
        bgo: json["BGO"],
        blu: json["BLU"],
        bie: json["BIE"],
        cab: json["CAB"],
        cnn: json["CNN"],
        hua: json["HUA"],
        hui: json["HUI"],
        ccu: json["CCU"],
        cno: json["CNO"],
        cus: json["CUS"],
        lua: json["LUA"],
        lno: json["LNO"],
        lsu: json["LSU"],
        mal: json["MAL"],
        mox: json["MOX"],
        nam: json["NAM"],
        uig: json["UIG"],
        zai: json["ZAI"],
      );

  Map<String, dynamic> toJson() => {
        "BGO": bgo,
        "BLU": blu,
        "BIE": bie,
        "CAB": cab,
        "CNN": cnn,
        "HUA": hua,
        "HUI": hui,
        "CCU": ccu,
        "CNO": cno,
        "CUS": cus,
        "LUA": lua,
        "LNO": lno,
        "LSU": lsu,
        "MAL": mal,
        "MOX": mox,
        "NAM": nam,
        "UIG": uig,
        "ZAI": zai,
      };

  @override
  String toString() {
    return 'Ao(bgo: $bgo, blu: $blu, bie: $bie, cab: $cab, cnn: $cnn, hua: $hua, hui: $hui, ccu: $ccu, cno: $cno, cus: $cus, lua: $lua, lno: $lno, lsu: $lsu, mal: $mal, mox: $mox, nam: $nam, uig: $uig, zai: $zai)';
  }
}

class Ar {
  String c;
  String b;
  String k;
  String h;
  String u;
  String x;
  String w;
  String e;
  String p;
  String y;
  String l;
  String f;
  String m;
  String n;
  String q;
  String r;
  String a;
  String j;
  String d;
  String z;
  String s;
  String g;
  String v;
  String t;

  Ar({
    required this.c,
    required this.b,
    required this.k,
    required this.h,
    required this.u,
    required this.x,
    required this.w,
    required this.e,
    required this.p,
    required this.y,
    required this.l,
    required this.f,
    required this.m,
    required this.n,
    required this.q,
    required this.r,
    required this.a,
    required this.j,
    required this.d,
    required this.z,
    required this.s,
    required this.g,
    required this.v,
    required this.t,
  });

  factory Ar.fromJson(Map<String, dynamic> json) => Ar(
        c: json["C"],
        b: json["B"],
        k: json["K"],
        h: json["H"],
        u: json["U"],
        x: json["X"],
        w: json["W"],
        e: json["E"],
        p: json["P"],
        y: json["Y"],
        l: json["L"],
        f: json["F"],
        m: json["M"],
        n: json["N"],
        q: json["Q"],
        r: json["R"],
        a: json["A"],
        j: json["J"],
        d: json["D"],
        z: json["Z"],
        s: json["S"],
        g: json["G"],
        v: json["V"],
        t: json["T"],
      );

  Map<String, dynamic> toJson() => {
        "C": c,
        "B": b,
        "K": k,
        "H": h,
        "U": u,
        "X": x,
        "W": w,
        "E": e,
        "P": p,
        "Y": y,
        "L": l,
        "F": f,
        "M": m,
        "N": n,
        "Q": q,
        "R": r,
        "A": a,
        "J": j,
        "D": d,
        "Z": z,
        "S": s,
        "G": g,
        "V": v,
        "T": t,
      };

  @override
  String toString() {
    return 'Ar(c: $c, b: $b, k: $k, h: $h, u: $u, x: $x, w: $w, e: $e, p: $p, y: $y, l: $l, f: $f, m: $m, n: $n, q: $q, r: $r, a: $a, j: $j, d: $d, z: $z, s: $s, g: $g, v: $v, t: $t)';
  }
}

class Au {
  String act;
  String nsw;
  String nt;
  String qld;
  String sa;
  String tas;
  String vic;
  String wa;

  Au({
    required this.act,
    required this.nsw,
    required this.nt,
    required this.qld,
    required this.sa,
    required this.tas,
    required this.vic,
    required this.wa,
  });

  factory Au.fromJson(Map<String, dynamic> json) => Au(
        act: json["ACT"],
        nsw: json["NSW"],
        nt: json["NT"],
        qld: json["QLD"],
        sa: json["SA"],
        tas: json["TAS"],
        vic: json["VIC"],
        wa: json["WA"],
      );

  Map<String, dynamic> toJson() => {
        "ACT": act,
        "NSW": nsw,
        "NT": nt,
        "QLD": qld,
        "SA": sa,
        "TAS": tas,
        "VIC": vic,
        "WA": wa,
      };

  @override
  String toString() {
    return 'Au(act: $act, nsw: $nsw, nt: $nt, qld: $qld, sa: $sa, tas: $tas, vic: $vic, wa: $wa)';
  }
}

class Bg {
  String bg01;
  String bg02;
  String bg08;
  String bg07;
  String bg26;
  String bg09;
  String bg10;
  String bg11;
  String bg12;
  String bg13;
  String bg14;
  String bg15;
  String bg16;
  String bg17;
  String bg18;
  String bg27;
  String bg19;
  String bg20;
  String bg21;
  String bg23;
  String bg22;
  String bg24;
  String bg25;
  String bg03;
  String bg04;
  String bg05;
  String bg06;
  String bg28;

  Bg({
    required this.bg01,
    required this.bg02,
    required this.bg08,
    required this.bg07,
    required this.bg26,
    required this.bg09,
    required this.bg10,
    required this.bg11,
    required this.bg12,
    required this.bg13,
    required this.bg14,
    required this.bg15,
    required this.bg16,
    required this.bg17,
    required this.bg18,
    required this.bg27,
    required this.bg19,
    required this.bg20,
    required this.bg21,
    required this.bg23,
    required this.bg22,
    required this.bg24,
    required this.bg25,
    required this.bg03,
    required this.bg04,
    required this.bg05,
    required this.bg06,
    required this.bg28,
  });

  factory Bg.fromJson(Map<String, dynamic> json) => Bg(
        bg01: json["BG-01"],
        bg02: json["BG-02"],
        bg08: json["BG-08"],
        bg07: json["BG-07"],
        bg26: json["BG-26"],
        bg09: json["BG-09"],
        bg10: json["BG-10"],
        bg11: json["BG-11"],
        bg12: json["BG-12"],
        bg13: json["BG-13"],
        bg14: json["BG-14"],
        bg15: json["BG-15"],
        bg16: json["BG-16"],
        bg17: json["BG-17"],
        bg18: json["BG-18"],
        bg27: json["BG-27"],
        bg19: json["BG-19"],
        bg20: json["BG-20"],
        bg21: json["BG-21"],
        bg23: json["BG-23"],
        bg22: json["BG-22"],
        bg24: json["BG-24"],
        bg25: json["BG-25"],
        bg03: json["BG-03"],
        bg04: json["BG-04"],
        bg05: json["BG-05"],
        bg06: json["BG-06"],
        bg28: json["BG-28"],
      );

  Map<String, dynamic> toJson() => {
        "BG-01": bg01,
        "BG-02": bg02,
        "BG-08": bg08,
        "BG-07": bg07,
        "BG-26": bg26,
        "BG-09": bg09,
        "BG-10": bg10,
        "BG-11": bg11,
        "BG-12": bg12,
        "BG-13": bg13,
        "BG-14": bg14,
        "BG-15": bg15,
        "BG-16": bg16,
        "BG-17": bg17,
        "BG-18": bg18,
        "BG-27": bg27,
        "BG-19": bg19,
        "BG-20": bg20,
        "BG-21": bg21,
        "BG-23": bg23,
        "BG-22": bg22,
        "BG-24": bg24,
        "BG-25": bg25,
        "BG-03": bg03,
        "BG-04": bg04,
        "BG-05": bg05,
        "BG-06": bg06,
        "BG-28": bg28,
      };

  @override
  String toString() {
    return 'Bg(bg01: $bg01, bg02: $bg02, bg08: $bg08, bg07: $bg07, bg26: $bg26, bg09: $bg09, bg10: $bg10, bg11: $bg11, bg12: $bg12, bg13: $bg13, bg14: $bg14, bg15: $bg15, bg16: $bg16, bg17: $bg17, bg18: $bg18, bg27: $bg27, bg19: $bg19, bg20: $bg20, bg21: $bg21, bg23: $bg23, bg22: $bg22, bg24: $bg24, bg25: $bg25, bg03: $bg03, bg04: $bg04, bg05: $bg05, bg06: $bg06, bg28: $bg28)';
  }
}

class Bj {
  String al;
  String ak;
  String aq;
  String bo;
  String co;
  String ko;
  String bjDo;
  String li;
  String mo;
  String ou;
  String pl;
  String zo;

  Bj({
    required this.al,
    required this.ak,
    required this.aq,
    required this.bo,
    required this.co,
    required this.ko,
    required this.bjDo,
    required this.li,
    required this.mo,
    required this.ou,
    required this.pl,
    required this.zo,
  });

  factory Bj.fromJson(Map<String, dynamic> json) => Bj(
        al: json["AL"],
        ak: json["AK"],
        aq: json["AQ"],
        bo: json["BO"],
        co: json["CO"],
        ko: json["KO"],
        bjDo: json["DO"],
        li: json["LI"],
        mo: json["MO"],
        ou: json["OU"],
        pl: json["PL"],
        zo: json["ZO"],
      );

  Map<String, dynamic> toJson() => {
        "AL": al,
        "AK": ak,
        "AQ": aq,
        "BO": bo,
        "CO": co,
        "KO": ko,
        "DO": bjDo,
        "LI": li,
        "MO": mo,
        "OU": ou,
        "PL": pl,
        "ZO": zo,
      };

  @override
  String toString() {
    return 'Bj(al: $al, ak: $ak, aq: $aq, bo: $bo, co: $co, ko: $ko, bjDo: $bjDo, li: $li, mo: $mo, ou: $ou, pl: $pl, zo: $zo)';
  }
}

class Bo {
  String boB;
  String boH;
  String boC;
  String boL;
  String boO;
  String boN;
  String boP;
  String boS;
  String boT;

  Bo({
    required this.boB,
    required this.boH,
    required this.boC,
    required this.boL,
    required this.boO,
    required this.boN,
    required this.boP,
    required this.boS,
    required this.boT,
  });

  factory Bo.fromJson(Map<String, dynamic> json) => Bo(
        boB: json["BO-B"],
        boH: json["BO-H"],
        boC: json["BO-C"],
        boL: json["BO-L"],
        boO: json["BO-O"],
        boN: json["BO-N"],
        boP: json["BO-P"],
        boS: json["BO-S"],
        boT: json["BO-T"],
      );

  Map<String, dynamic> toJson() => {
        "BO-B": boB,
        "BO-H": boH,
        "BO-C": boC,
        "BO-L": boL,
        "BO-O": boO,
        "BO-N": boN,
        "BO-P": boP,
        "BO-S": boS,
        "BO-T": boT,
      };

  @override
  String toString() {
    return 'Bo(boB: $boB, boH: $boH, boC: $boC, boL: $boL, boO: $boO, boN: $boN, boP: $boP, boS: $boS, boT: $boT)';
  }
}

class Br {
  String ac;
  String al;
  String ap;
  String am;
  String ba;
  String ce;
  String df;
  String es;
  String go;
  String ma;
  String mt;
  String ms;
  String mg;
  String pa;
  String pb;
  String pr;
  String pe;
  String pi;
  String rj;
  String rn;
  String rs;
  String ro;
  String rr;
  String sc;
  String sp;
  String se;
  String to;

  Br({
    required this.ac,
    required this.al,
    required this.ap,
    required this.am,
    required this.ba,
    required this.ce,
    required this.df,
    required this.es,
    required this.go,
    required this.ma,
    required this.mt,
    required this.ms,
    required this.mg,
    required this.pa,
    required this.pb,
    required this.pr,
    required this.pe,
    required this.pi,
    required this.rj,
    required this.rn,
    required this.rs,
    required this.ro,
    required this.rr,
    required this.sc,
    required this.sp,
    required this.se,
    required this.to,
  });

  factory Br.fromJson(Map<String, dynamic> json) => Br(
        ac: json["AC"],
        al: json["AL"],
        ap: json["AP"],
        am: json["AM"],
        ba: json["BA"],
        ce: json["CE"],
        df: json["DF"],
        es: json["ES"],
        go: json["GO"],
        ma: json["MA"],
        mt: json["MT"],
        ms: json["MS"],
        mg: json["MG"],
        pa: json["PA"],
        pb: json["PB"],
        pr: json["PR"],
        pe: json["PE"],
        pi: json["PI"],
        rj: json["RJ"],
        rn: json["RN"],
        rs: json["RS"],
        ro: json["RO"],
        rr: json["RR"],
        sc: json["SC"],
        sp: json["SP"],
        se: json["SE"],
        to: json["TO"],
      );

  Map<String, dynamic> toJson() => {
        "AC": ac,
        "AL": al,
        "AP": ap,
        "AM": am,
        "BA": ba,
        "CE": ce,
        "DF": df,
        "ES": es,
        "GO": go,
        "MA": ma,
        "MT": mt,
        "MS": ms,
        "MG": mg,
        "PA": pa,
        "PB": pb,
        "PR": pr,
        "PE": pe,
        "PI": pi,
        "RJ": rj,
        "RN": rn,
        "RS": rs,
        "RO": ro,
        "RR": rr,
        "SC": sc,
        "SP": sp,
        "SE": se,
        "TO": to,
      };

  @override
  String toString() {
    return 'Br(ac: $ac, al: $al, ap: $ap, am: $am, ba: $ba, ce: $ce, df: $df, es: $es, go: $go, ma: $ma, mt: $mt, ms: $ms, mg: $mg, pa: $pa, pb: $pb, pr: $pr, pe: $pe, pi: $pi, rj: $rj, rn: $rn, rs: $rs, ro: $ro, rr: $rr, sc: $sc, sp: $sp, se: $se, to: $to)';
  }
}

class Ca {
  String ab;
  String bc;
  String mb;
  String nb;
  String nl;
  String nt;
  String ns;
  String nu;
  String on;
  String pe;
  String qc;
  String sk;
  String yt;

  Ca({
    required this.ab,
    required this.bc,
    required this.mb,
    required this.nb,
    required this.nl,
    required this.nt,
    required this.ns,
    required this.nu,
    required this.on,
    required this.pe,
    required this.qc,
    required this.sk,
    required this.yt,
  });

  factory Ca.fromJson(Map<String, dynamic> json) => Ca(
        ab: json["AB"],
        bc: json["BC"],
        mb: json["MB"],
        nb: json["NB"],
        nl: json["NL"],
        nt: json["NT"],
        ns: json["NS"],
        nu: json["NU"],
        on: json["ON"],
        pe: json["PE"],
        qc: json["QC"],
        sk: json["SK"],
        yt: json["YT"],
      );

  Map<String, dynamic> toJson() => {
        "AB": ab,
        "BC": bc,
        "MB": mb,
        "NB": nb,
        "NL": nl,
        "NT": nt,
        "NS": ns,
        "NU": nu,
        "ON": on,
        "PE": pe,
        "QC": qc,
        "SK": sk,
        "YT": yt,
      };

  @override
  String toString() {
    return 'Ca(ab: $ab, bc: $bc, mb: $mb, nb: $nb, nl: $nl, nt: $nt, ns: $ns, nu: $nu, on: $on, pe: $pe, qc: $qc, sk: $sk, yt: $yt)';
  }
}

class Ch {
  String ag;
  String ar;
  String ai;
  String bl;
  String bs;
  String be;
  String fr;
  String ge;
  String gl;
  String gr;
  String ju;
  String lu;
  String ne;
  String nw;
  String ow;
  String sh;
  String sz;
  String so;
  String sg;
  String tg;
  String ti;
  String ur;
  String vs;
  String vd;
  String zg;
  String zh;

  Ch({
    required this.ag,
    required this.ar,
    required this.ai,
    required this.bl,
    required this.bs,
    required this.be,
    required this.fr,
    required this.ge,
    required this.gl,
    required this.gr,
    required this.ju,
    required this.lu,
    required this.ne,
    required this.nw,
    required this.ow,
    required this.sh,
    required this.sz,
    required this.so,
    required this.sg,
    required this.tg,
    required this.ti,
    required this.ur,
    required this.vs,
    required this.vd,
    required this.zg,
    required this.zh,
  });

  factory Ch.fromJson(Map<String, dynamic> json) => Ch(
        ag: json["AG"],
        ar: json["AR"],
        ai: json["AI"],
        bl: json["BL"],
        bs: json["BS"],
        be: json["BE"],
        fr: json["FR"],
        ge: json["GE"],
        gl: json["GL"],
        gr: json["GR"],
        ju: json["JU"],
        lu: json["LU"],
        ne: json["NE"],
        nw: json["NW"],
        ow: json["OW"],
        sh: json["SH"],
        sz: json["SZ"],
        so: json["SO"],
        sg: json["SG"],
        tg: json["TG"],
        ti: json["TI"],
        ur: json["UR"],
        vs: json["VS"],
        vd: json["VD"],
        zg: json["ZG"],
        zh: json["ZH"],
      );

  Map<String, dynamic> toJson() => {
        "AG": ag,
        "AR": ar,
        "AI": ai,
        "BL": bl,
        "BS": bs,
        "BE": be,
        "FR": fr,
        "GE": ge,
        "GL": gl,
        "GR": gr,
        "JU": ju,
        "LU": lu,
        "NE": ne,
        "NW": nw,
        "OW": ow,
        "SH": sh,
        "SZ": sz,
        "SO": so,
        "SG": sg,
        "TG": tg,
        "TI": ti,
        "UR": ur,
        "VS": vs,
        "VD": vd,
        "ZG": zg,
        "ZH": zh,
      };

  @override
  String toString() {
    return 'Ch(ag: $ag, ar: $ar, ai: $ai, bl: $bl, bs: $bs, be: $be, fr: $fr, ge: $ge, gl: $gl, gr: $gr, ju: $ju, lu: $lu, ne: $ne, nw: $nw, ow: $ow, sh: $sh, sz: $sz, so: $so, sg: $sg, tg: $tg, ti: $ti, ur: $ur, vs: $vs, vd: $vd, zg: $zg, zh: $zh)';
  }
}

class Cl {
  String clAi;
  String clAn;
  String clAp;
  String clAr;
  String clAt;
  String clBi;
  String clCo;
  String clLi;
  String clLl;
  String clLr;
  String clMa;
  String clMl;
  String clNb;
  String clRm;
  String clTa;
  String clVs;

  Cl({
    required this.clAi,
    required this.clAn,
    required this.clAp,
    required this.clAr,
    required this.clAt,
    required this.clBi,
    required this.clCo,
    required this.clLi,
    required this.clLl,
    required this.clLr,
    required this.clMa,
    required this.clMl,
    required this.clNb,
    required this.clRm,
    required this.clTa,
    required this.clVs,
  });

  factory Cl.fromJson(Map<String, dynamic> json) => Cl(
        clAi: json["CL-AI"],
        clAn: json["CL-AN"],
        clAp: json["CL-AP"],
        clAr: json["CL-AR"],
        clAt: json["CL-AT"],
        clBi: json["CL-BI"],
        clCo: json["CL-CO"],
        clLi: json["CL-LI"],
        clLl: json["CL-LL"],
        clLr: json["CL-LR"],
        clMa: json["CL-MA"],
        clMl: json["CL-ML"],
        clNb: json["CL-NB"],
        clRm: json["CL-RM"],
        clTa: json["CL-TA"],
        clVs: json["CL-VS"],
      );

  Map<String, dynamic> toJson() => {
        "CL-AI": clAi,
        "CL-AN": clAn,
        "CL-AP": clAp,
        "CL-AR": clAr,
        "CL-AT": clAt,
        "CL-BI": clBi,
        "CL-CO": clCo,
        "CL-LI": clLi,
        "CL-LL": clLl,
        "CL-LR": clLr,
        "CL-MA": clMa,
        "CL-ML": clMl,
        "CL-NB": clNb,
        "CL-RM": clRm,
        "CL-TA": clTa,
        "CL-VS": clVs,
      };

  @override
  String toString() {
    return 'Cl(clAi: $clAi, clAn: $clAn, clAp: $clAp, clAr: $clAr, clAt: $clAt, clBi: $clBi, clCo: $clCo, clLi: $clLi, clLl: $clLl, clLr: $clLr, clMa: $clMa, clMl: $clMl, clNb: $clNb, clRm: $clRm, clTa: $clTa, clVs: $clVs)';
  }
}

class Cn {
  String cn1;
  String cn2;
  String cn3;
  String cn4;
  String cn5;
  String cn6;
  String cn7;
  String cn8;
  String cn9;
  String cn10;
  String cn11;
  String cn12;
  String cn13;
  String cn14;
  String cn15;
  String cn16;
  String cn17;
  String cn18;
  String cn19;
  String cn20;
  String cn21;
  String cn22;
  String cn23;
  String cn24;
  String cn25;
  String cn26;
  String cn27;
  String cn28;
  String cn29;
  String cn30;
  String cn31;
  String cn32;

  Cn({
    required this.cn1,
    required this.cn2,
    required this.cn3,
    required this.cn4,
    required this.cn5,
    required this.cn6,
    required this.cn7,
    required this.cn8,
    required this.cn9,
    required this.cn10,
    required this.cn11,
    required this.cn12,
    required this.cn13,
    required this.cn14,
    required this.cn15,
    required this.cn16,
    required this.cn17,
    required this.cn18,
    required this.cn19,
    required this.cn20,
    required this.cn21,
    required this.cn22,
    required this.cn23,
    required this.cn24,
    required this.cn25,
    required this.cn26,
    required this.cn27,
    required this.cn28,
    required this.cn29,
    required this.cn30,
    required this.cn31,
    required this.cn32,
  });

  factory Cn.fromJson(Map<String, dynamic> json) => Cn(
        cn1: json["CN1"],
        cn2: json["CN2"],
        cn3: json["CN3"],
        cn4: json["CN4"],
        cn5: json["CN5"],
        cn6: json["CN6"],
        cn7: json["CN7"],
        cn8: json["CN8"],
        cn9: json["CN9"],
        cn10: json["CN10"],
        cn11: json["CN11"],
        cn12: json["CN12"],
        cn13: json["CN13"],
        cn14: json["CN14"],
        cn15: json["CN15"],
        cn16: json["CN16"],
        cn17: json["CN17"],
        cn18: json["CN18"],
        cn19: json["CN19"],
        cn20: json["CN20"],
        cn21: json["CN21"],
        cn22: json["CN22"],
        cn23: json["CN23"],
        cn24: json["CN24"],
        cn25: json["CN25"],
        cn26: json["CN26"],
        cn27: json["CN27"],
        cn28: json["CN28"],
        cn29: json["CN29"],
        cn30: json["CN30"],
        cn31: json["CN31"],
        cn32: json["CN32"],
      );

  Map<String, dynamic> toJson() => {
        "CN1": cn1,
        "CN2": cn2,
        "CN3": cn3,
        "CN4": cn4,
        "CN5": cn5,
        "CN6": cn6,
        "CN7": cn7,
        "CN8": cn8,
        "CN9": cn9,
        "CN10": cn10,
        "CN11": cn11,
        "CN12": cn12,
        "CN13": cn13,
        "CN14": cn14,
        "CN15": cn15,
        "CN16": cn16,
        "CN17": cn17,
        "CN18": cn18,
        "CN19": cn19,
        "CN20": cn20,
        "CN21": cn21,
        "CN22": cn22,
        "CN23": cn23,
        "CN24": cn24,
        "CN25": cn25,
        "CN26": cn26,
        "CN27": cn27,
        "CN28": cn28,
        "CN29": cn29,
        "CN30": cn30,
        "CN31": cn31,
        "CN32": cn32,
      };

  @override
  String toString() {
    return 'Cn(cn1: $cn1, cn2: $cn2, cn3: $cn3, cn4: $cn4, cn5: $cn5, cn6: $cn6, cn7: $cn7, cn8: $cn8, cn9: $cn9, cn10: $cn10, cn11: $cn11, cn12: $cn12, cn13: $cn13, cn14: $cn14, cn15: $cn15, cn16: $cn16, cn17: $cn17, cn18: $cn18, cn19: $cn19, cn20: $cn20, cn21: $cn21, cn22: $cn22, cn23: $cn23, cn24: $cn24, cn25: $cn25, cn26: $cn26, cn27: $cn27, cn28: $cn28, cn29: $cn29, cn30: $cn30, cn31: $cn31, cn32: $cn32)';
  }
}

class Co {
  String coAma;
  String coAnt;
  String coAra;
  String coAtl;
  String coBol;
  String coBoy;
  String coCal;
  String coCaq;
  String coCas;
  String coCau;
  String coCes;
  String coCho;
  String coCor;
  String coCun;
  String coDc;
  String coGua;
  String coGuv;
  String coHui;
  String coLag;
  String coMag;
  String coMet;
  String coNar;
  String coNsa;
  String coPut;
  String coQui;
  String coRis;
  String coSan;
  String coSap;
  String coSuc;
  String coTol;
  String coVac;
  String coVau;
  String coVid;

  Co({
    required this.coAma,
    required this.coAnt,
    required this.coAra,
    required this.coAtl,
    required this.coBol,
    required this.coBoy,
    required this.coCal,
    required this.coCaq,
    required this.coCas,
    required this.coCau,
    required this.coCes,
    required this.coCho,
    required this.coCor,
    required this.coCun,
    required this.coDc,
    required this.coGua,
    required this.coGuv,
    required this.coHui,
    required this.coLag,
    required this.coMag,
    required this.coMet,
    required this.coNar,
    required this.coNsa,
    required this.coPut,
    required this.coQui,
    required this.coRis,
    required this.coSan,
    required this.coSap,
    required this.coSuc,
    required this.coTol,
    required this.coVac,
    required this.coVau,
    required this.coVid,
  });

  factory Co.fromJson(Map<String, dynamic> json) => Co(
        coAma: json["CO-AMA"],
        coAnt: json["CO-ANT"],
        coAra: json["CO-ARA"],
        coAtl: json["CO-ATL"],
        coBol: json["CO-BOL"],
        coBoy: json["CO-BOY"],
        coCal: json["CO-CAL"],
        coCaq: json["CO-CAQ"],
        coCas: json["CO-CAS"],
        coCau: json["CO-CAU"],
        coCes: json["CO-CES"],
        coCho: json["CO-CHO"],
        coCor: json["CO-COR"],
        coCun: json["CO-CUN"],
        coDc: json["CO-DC"],
        coGua: json["CO-GUA"],
        coGuv: json["CO-GUV"],
        coHui: json["CO-HUI"],
        coLag: json["CO-LAG"],
        coMag: json["CO-MAG"],
        coMet: json["CO-MET"],
        coNar: json["CO-NAR"],
        coNsa: json["CO-NSA"],
        coPut: json["CO-PUT"],
        coQui: json["CO-QUI"],
        coRis: json["CO-RIS"],
        coSan: json["CO-SAN"],
        coSap: json["CO-SAP"],
        coSuc: json["CO-SUC"],
        coTol: json["CO-TOL"],
        coVac: json["CO-VAC"],
        coVau: json["CO-VAU"],
        coVid: json["CO-VID"],
      );

  Map<String, dynamic> toJson() => {
        "CO-AMA": coAma,
        "CO-ANT": coAnt,
        "CO-ARA": coAra,
        "CO-ATL": coAtl,
        "CO-BOL": coBol,
        "CO-BOY": coBoy,
        "CO-CAL": coCal,
        "CO-CAQ": coCaq,
        "CO-CAS": coCas,
        "CO-CAU": coCau,
        "CO-CES": coCes,
        "CO-CHO": coCho,
        "CO-COR": coCor,
        "CO-CUN": coCun,
        "CO-DC": coDc,
        "CO-GUA": coGua,
        "CO-GUV": coGuv,
        "CO-HUI": coHui,
        "CO-LAG": coLag,
        "CO-MAG": coMag,
        "CO-MET": coMet,
        "CO-NAR": coNar,
        "CO-NSA": coNsa,
        "CO-PUT": coPut,
        "CO-QUI": coQui,
        "CO-RIS": coRis,
        "CO-SAN": coSan,
        "CO-SAP": coSap,
        "CO-SUC": coSuc,
        "CO-TOL": coTol,
        "CO-VAC": coVac,
        "CO-VAU": coVau,
        "CO-VID": coVid,
      };

  @override
  String toString() {
    return 'Co(coAma: $coAma, coAnt: $coAnt, coAra: $coAra, coAtl: $coAtl, coBol: $coBol, coBoy: $coBoy, coCal: $coCal, coCaq: $coCaq, coCas: $coCas, coCau: $coCau, coCes: $coCes, coCho: $coCho, coCor: $coCor, coCun: $coCun, coDc: $coDc, coGua: $coGua, coGuv: $coGuv, coHui: $coHui, coLag: $coLag, coMag: $coMag, coMet: $coMet, coNar: $coNar, coNsa: $coNsa, coPut: $coPut, coQui: $coQui, coRis: $coRis, coSan: $coSan, coSap: $coSap, coSuc: $coSuc, coTol: $coTol, coVac: $coVac, coVau: $coVau, coVid: $coVid)';
  }
}

class Do {
  String do01;
  String do02;
  String do03;
  String do04;
  String do33;
  String do34;
  String do35;
  String do36;
  String do05;
  String do06;
  String do08;
  String do37;
  String do07;
  String do38;
  String do09;
  String do30;
  String do19;
  String do39;
  String do10;
  String do11;
  String do12;
  String do13;
  String do14;
  String do28;
  String do15;
  String do29;
  String do40;
  String do16;
  String do17;
  String do18;
  String do20;
  String do21;
  String do31;
  String do22;
  String do23;
  String do24;
  String do25;
  String do26;
  String do32;
  String do41;
  String do27;
  String do42;

  Do({
    required this.do01,
    required this.do02,
    required this.do03,
    required this.do04,
    required this.do33,
    required this.do34,
    required this.do35,
    required this.do36,
    required this.do05,
    required this.do06,
    required this.do08,
    required this.do37,
    required this.do07,
    required this.do38,
    required this.do09,
    required this.do30,
    required this.do19,
    required this.do39,
    required this.do10,
    required this.do11,
    required this.do12,
    required this.do13,
    required this.do14,
    required this.do28,
    required this.do15,
    required this.do29,
    required this.do40,
    required this.do16,
    required this.do17,
    required this.do18,
    required this.do20,
    required this.do21,
    required this.do31,
    required this.do22,
    required this.do23,
    required this.do24,
    required this.do25,
    required this.do26,
    required this.do32,
    required this.do41,
    required this.do27,
    required this.do42,
  });

  factory Do.fromJson(Map<String, dynamic> json) => Do(
        do01: json["DO-01"],
        do02: json["DO-02"],
        do03: json["DO-03"],
        do04: json["DO-04"],
        do33: json["DO-33"],
        do34: json["DO-34"],
        do35: json["DO-35"],
        do36: json["DO-36"],
        do05: json["DO-05"],
        do06: json["DO-06"],
        do08: json["DO-08"],
        do37: json["DO-37"],
        do07: json["DO-07"],
        do38: json["DO-38"],
        do09: json["DO-09"],
        do30: json["DO-30"],
        do19: json["DO-19"],
        do39: json["DO-39"],
        do10: json["DO-10"],
        do11: json["DO-11"],
        do12: json["DO-12"],
        do13: json["DO-13"],
        do14: json["DO-14"],
        do28: json["DO-28"],
        do15: json["DO-15"],
        do29: json["DO-29"],
        do40: json["DO-40"],
        do16: json["DO-16"],
        do17: json["DO-17"],
        do18: json["DO-18"],
        do20: json["DO-20"],
        do21: json["DO-21"],
        do31: json["DO-31"],
        do22: json["DO-22"],
        do23: json["DO-23"],
        do24: json["DO-24"],
        do25: json["DO-25"],
        do26: json["DO-26"],
        do32: json["DO-32"],
        do41: json["DO-41"],
        do27: json["DO-27"],
        do42: json["DO-42"],
      );

  Map<String, dynamic> toJson() => {
        "DO-01": do01,
        "DO-02": do02,
        "DO-03": do03,
        "DO-04": do04,
        "DO-33": do33,
        "DO-34": do34,
        "DO-35": do35,
        "DO-36": do36,
        "DO-05": do05,
        "DO-06": do06,
        "DO-08": do08,
        "DO-37": do37,
        "DO-07": do07,
        "DO-38": do38,
        "DO-09": do09,
        "DO-30": do30,
        "DO-19": do19,
        "DO-39": do39,
        "DO-10": do10,
        "DO-11": do11,
        "DO-12": do12,
        "DO-13": do13,
        "DO-14": do14,
        "DO-28": do28,
        "DO-15": do15,
        "DO-29": do29,
        "DO-40": do40,
        "DO-16": do16,
        "DO-17": do17,
        "DO-18": do18,
        "DO-20": do20,
        "DO-21": do21,
        "DO-31": do31,
        "DO-22": do22,
        "DO-23": do23,
        "DO-24": do24,
        "DO-25": do25,
        "DO-26": do26,
        "DO-32": do32,
        "DO-41": do41,
        "DO-27": do27,
        "DO-42": do42,
      };

  @override
  String toString() {
    return 'Do(do01: $do01, do02: $do02, do03: $do03, do04: $do04, do33: $do33, do34: $do34, do35: $do35, do36: $do36, do05: $do05, do06: $do06, do08: $do08, do37: $do37, do07: $do07, do38: $do38, do09: $do09, do30: $do30, do19: $do19, do39: $do39, do10: $do10, do11: $do11, do12: $do12, do13: $do13, do14: $do14, do28: $do28, do15: $do15, do29: $do29, do40: $do40, do16: $do16, do17: $do17, do18: $do18, do20: $do20, do21: $do21, do31: $do31, do22: $do22, do23: $do23, do24: $do24, do25: $do25, do26: $do26, do32: $do32, do41: $do41, do27: $do27, do42: $do42)';
  }
}

class In {
  String ap;
  String ar;
  String inAs;
  String br;
  String ct;
  String ga;
  String gj;
  String hr;
  String hp;
  String jk;
  String jh;
  String ka;
  String kl;
  String la;
  String mp;
  String mh;
  String mn;
  String ml;
  String mz;
  String nl;
  String or;
  String pb;
  String rj;
  String sk;
  String tn;
  String ts;
  String tr;
  String uk;
  String up;
  String wb;
  String an;
  String ch;
  String dn;
  String dd;
  String dl;
  String ld;
  String py;

  In({
    required this.ap,
    required this.ar,
    required this.inAs,
    required this.br,
    required this.ct,
    required this.ga,
    required this.gj,
    required this.hr,
    required this.hp,
    required this.jk,
    required this.jh,
    required this.ka,
    required this.kl,
    required this.la,
    required this.mp,
    required this.mh,
    required this.mn,
    required this.ml,
    required this.mz,
    required this.nl,
    required this.or,
    required this.pb,
    required this.rj,
    required this.sk,
    required this.tn,
    required this.ts,
    required this.tr,
    required this.uk,
    required this.up,
    required this.wb,
    required this.an,
    required this.ch,
    required this.dn,
    required this.dd,
    required this.dl,
    required this.ld,
    required this.py,
  });

  factory In.fromJson(Map<String, dynamic> json) => In(
        ap: json["AP"],
        ar: json["AR"],
        inAs: json["AS"],
        br: json["BR"],
        ct: json["CT"],
        ga: json["GA"],
        gj: json["GJ"],
        hr: json["HR"],
        hp: json["HP"],
        jk: json["JK"],
        jh: json["JH"],
        ka: json["KA"],
        kl: json["KL"],
        la: json["LA"],
        mp: json["MP"],
        mh: json["MH"],
        mn: json["MN"],
        ml: json["ML"],
        mz: json["MZ"],
        nl: json["NL"],
        or: json["OR"],
        pb: json["PB"],
        rj: json["RJ"],
        sk: json["SK"],
        tn: json["TN"],
        ts: json["TS"],
        tr: json["TR"],
        uk: json["UK"],
        up: json["UP"],
        wb: json["WB"],
        an: json["AN"],
        ch: json["CH"],
        dn: json["DN"],
        dd: json["DD"],
        dl: json["DL"],
        ld: json["LD"],
        py: json["PY"],
      );

  Map<String, dynamic> toJson() => {
        "AP": ap,
        "AR": ar,
        "AS": inAs,
        "BR": br,
        "CT": ct,
        "GA": ga,
        "GJ": gj,
        "HR": hr,
        "HP": hp,
        "JK": jk,
        "JH": jh,
        "KA": ka,
        "KL": kl,
        "LA": la,
        "MP": mp,
        "MH": mh,
        "MN": mn,
        "ML": ml,
        "MZ": mz,
        "NL": nl,
        "OR": or,
        "PB": pb,
        "RJ": rj,
        "SK": sk,
        "TN": tn,
        "TS": ts,
        "TR": tr,
        "UK": uk,
        "UP": up,
        "WB": wb,
        "AN": an,
        "CH": ch,
        "DN": dn,
        "DD": dd,
        "DL": dl,
        "LD": ld,
        "PY": py,
      };

  @override
  String toString() {
    return 'In(ap: $ap, ar: $ar, inAs: $inAs, br: $br, ct: $ct, ga: $ga, gj: $gj, hr: $hr, hp: $hp, jk: $jk, jh: $jh, ka: $ka, kl: $kl, la: $la, mp: $mp, mh: $mh, mn: $mn, ml: $ml, mz: $mz, nl: $nl, or: $or, pb: $pb, rj: $rj, sk: $sk, tn: $tn, ts: $ts, tr: $tr, uk: $uk, up: $up, wb: $wb, an: $an, ch: $ch, dn: $dn, dd: $dd, dl: $dl, ld: $ld, py: $py)';
  }
}

class Cr {
  String crA;
  String crC;
  String crG;
  String crH;
  String crL;
  String crP;
  String crSj;

  Cr({
    required this.crA,
    required this.crC,
    required this.crG,
    required this.crH,
    required this.crL,
    required this.crP,
    required this.crSj,
  });

  factory Cr.fromJson(Map<String, dynamic> json) => Cr(
        crA: json["CR-A"],
        crC: json["CR-C"],
        crG: json["CR-G"],
        crH: json["CR-H"],
        crL: json["CR-L"],
        crP: json["CR-P"],
        crSj: json["CR-SJ"],
      );

  Map<String, dynamic> toJson() => {
        "CR-A": crA,
        "CR-C": crC,
        "CR-G": crG,
        "CR-H": crH,
        "CR-L": crL,
        "CR-P": crP,
        "CR-SJ": crSj,
      };

  @override
  String toString() {
    return 'Cr(crA: $crA, crC: $crC, crG: $crG, crH: $crH, crL: $crL, crP: $crP, crSj: $crSj)';
  }
}

class De {
  String deBw;
  String deBy;
  String deBe;
  String deBb;
  String deHb;
  String deHh;
  String deHe;
  String deMv;
  String deNi;
  String deNw;
  String deRp;
  String deSl;
  String deSn;
  String deSt;
  String deSh;
  String deTh;

  De({
    required this.deBw,
    required this.deBy,
    required this.deBe,
    required this.deBb,
    required this.deHb,
    required this.deHh,
    required this.deHe,
    required this.deMv,
    required this.deNi,
    required this.deNw,
    required this.deRp,
    required this.deSl,
    required this.deSn,
    required this.deSt,
    required this.deSh,
    required this.deTh,
  });

  factory De.fromJson(Map<String, dynamic> json) => De(
        deBw: json["DE-BW"],
        deBy: json["DE-BY"],
        deBe: json["DE-BE"],
        deBb: json["DE-BB"],
        deHb: json["DE-HB"],
        deHh: json["DE-HH"],
        deHe: json["DE-HE"],
        deMv: json["DE-MV"],
        deNi: json["DE-NI"],
        deNw: json["DE-NW"],
        deRp: json["DE-RP"],
        deSl: json["DE-SL"],
        deSn: json["DE-SN"],
        deSt: json["DE-ST"],
        deSh: json["DE-SH"],
        deTh: json["DE-TH"],
      );

  Map<String, dynamic> toJson() => {
        "DE-BW": deBw,
        "DE-BY": deBy,
        "DE-BE": deBe,
        "DE-BB": deBb,
        "DE-HB": deHb,
        "DE-HH": deHh,
        "DE-HE": deHe,
        "DE-MV": deMv,
        "DE-NI": deNi,
        "DE-NW": deNw,
        "DE-RP": deRp,
        "DE-SL": deSl,
        "DE-SN": deSn,
        "DE-ST": deSt,
        "DE-SH": deSh,
        "DE-TH": deTh,
      };

  @override
  String toString() {
    return 'De(deBw: $deBw, deBy: $deBy, deBe: $deBe, deBb: $deBb, deHb: $deHb, deHh: $deHh, deHe: $deHe, deMv: $deMv, deNi: $deNi, deNw: $deNw, deRp: $deRp, deSl: $deSl, deSn: $deSn, deSt: $deSt, deSh: $deSh, deTh: $deTh)';
  }
}

class Dz {
  String dz01;
  String dz02;
  String dz03;
  String dz04;
  String dz05;
  String dz06;
  String dz07;
  String dz08;
  String dz09;
  String dz10;
  String dz11;
  String dz12;
  String dz13;
  String dz14;
  String dz15;
  String dz16;
  String dz17;
  String dz18;
  String dz19;
  String dz20;
  String dz21;
  String dz22;
  String dz23;
  String dz24;
  String dz25;
  String dz26;
  String dz27;
  String dz28;
  String dz29;
  String dz30;
  String dz31;
  String dz32;
  String dz33;
  String dz34;
  String dz35;
  String dz36;
  String dz37;
  String dz38;
  String dz39;
  String dz40;
  String dz41;
  String dz42;
  String dz43;
  String dz44;
  String dz45;
  String dz46;
  String dz47;
  String dz48;

  Dz({
    required this.dz01,
    required this.dz02,
    required this.dz03,
    required this.dz04,
    required this.dz05,
    required this.dz06,
    required this.dz07,
    required this.dz08,
    required this.dz09,
    required this.dz10,
    required this.dz11,
    required this.dz12,
    required this.dz13,
    required this.dz14,
    required this.dz15,
    required this.dz16,
    required this.dz17,
    required this.dz18,
    required this.dz19,
    required this.dz20,
    required this.dz21,
    required this.dz22,
    required this.dz23,
    required this.dz24,
    required this.dz25,
    required this.dz26,
    required this.dz27,
    required this.dz28,
    required this.dz29,
    required this.dz30,
    required this.dz31,
    required this.dz32,
    required this.dz33,
    required this.dz34,
    required this.dz35,
    required this.dz36,
    required this.dz37,
    required this.dz38,
    required this.dz39,
    required this.dz40,
    required this.dz41,
    required this.dz42,
    required this.dz43,
    required this.dz44,
    required this.dz45,
    required this.dz46,
    required this.dz47,
    required this.dz48,
  });

  factory Dz.fromJson(Map<String, dynamic> json) => Dz(
        dz01: json["DZ-01"],
        dz02: json["DZ-02"],
        dz03: json["DZ-03"],
        dz04: json["DZ-04"],
        dz05: json["DZ-05"],
        dz06: json["DZ-06"],
        dz07: json["DZ-07"],
        dz08: json["DZ-08"],
        dz09: json["DZ-09"],
        dz10: json["DZ-10"],
        dz11: json["DZ-11"],
        dz12: json["DZ-12"],
        dz13: json["DZ-13"],
        dz14: json["DZ-14"],
        dz15: json["DZ-15"],
        dz16: json["DZ-16"],
        dz17: json["DZ-17"],
        dz18: json["DZ-18"],
        dz19: json["DZ-19"],
        dz20: json["DZ-20"],
        dz21: json["DZ-21"],
        dz22: json["DZ-22"],
        dz23: json["DZ-23"],
        dz24: json["DZ-24"],
        dz25: json["DZ-25"],
        dz26: json["DZ-26"],
        dz27: json["DZ-27"],
        dz28: json["DZ-28"],
        dz29: json["DZ-29"],
        dz30: json["DZ-30"],
        dz31: json["DZ-31"],
        dz32: json["DZ-32"],
        dz33: json["DZ-33"],
        dz34: json["DZ-34"],
        dz35: json["DZ-35"],
        dz36: json["DZ-36"],
        dz37: json["DZ-37"],
        dz38: json["DZ-38"],
        dz39: json["DZ-39"],
        dz40: json["DZ-40"],
        dz41: json["DZ-41"],
        dz42: json["DZ-42"],
        dz43: json["DZ-43"],
        dz44: json["DZ-44"],
        dz45: json["DZ-45"],
        dz46: json["DZ-46"],
        dz47: json["DZ-47"],
        dz48: json["DZ-48"],
      );

  Map<String, dynamic> toJson() => {
        "DZ-01": dz01,
        "DZ-02": dz02,
        "DZ-03": dz03,
        "DZ-04": dz04,
        "DZ-05": dz05,
        "DZ-06": dz06,
        "DZ-07": dz07,
        "DZ-08": dz08,
        "DZ-09": dz09,
        "DZ-10": dz10,
        "DZ-11": dz11,
        "DZ-12": dz12,
        "DZ-13": dz13,
        "DZ-14": dz14,
        "DZ-15": dz15,
        "DZ-16": dz16,
        "DZ-17": dz17,
        "DZ-18": dz18,
        "DZ-19": dz19,
        "DZ-20": dz20,
        "DZ-21": dz21,
        "DZ-22": dz22,
        "DZ-23": dz23,
        "DZ-24": dz24,
        "DZ-25": dz25,
        "DZ-26": dz26,
        "DZ-27": dz27,
        "DZ-28": dz28,
        "DZ-29": dz29,
        "DZ-30": dz30,
        "DZ-31": dz31,
        "DZ-32": dz32,
        "DZ-33": dz33,
        "DZ-34": dz34,
        "DZ-35": dz35,
        "DZ-36": dz36,
        "DZ-37": dz37,
        "DZ-38": dz38,
        "DZ-39": dz39,
        "DZ-40": dz40,
        "DZ-41": dz41,
        "DZ-42": dz42,
        "DZ-43": dz43,
        "DZ-44": dz44,
        "DZ-45": dz45,
        "DZ-46": dz46,
        "DZ-47": dz47,
        "DZ-48": dz48,
      };

  @override
  String toString() {
    return 'Dz(dz01: $dz01, dz02: $dz02, dz03: $dz03, dz04: $dz04, dz05: $dz05, dz06: $dz06, dz07: $dz07, dz08: $dz08, dz09: $dz09, dz10: $dz10, dz11: $dz11, dz12: $dz12, dz13: $dz13, dz14: $dz14, dz15: $dz15, dz16: $dz16, dz17: $dz17, dz18: $dz18, dz19: $dz19, dz20: $dz20, dz21: $dz21, dz22: $dz22, dz23: $dz23, dz24: $dz24, dz25: $dz25, dz26: $dz26, dz27: $dz27, dz28: $dz28, dz29: $dz29, dz30: $dz30, dz31: $dz31, dz32: $dz32, dz33: $dz33, dz34: $dz34, dz35: $dz35, dz36: $dz36, dz37: $dz37, dz38: $dz38, dz39: $dz39, dz40: $dz40, dz41: $dz41, dz42: $dz42, dz43: $dz43, dz44: $dz44, dz45: $dz45, dz46: $dz46, dz47: $dz47, dz48: $dz48)';
  }
}

class Ec {
  String ecA;
  String ecB;
  String ecF;
  String ecC;
  String ecH;
  String ecX;
  String ecO;
  String ecE;
  String ecW;
  String ecG;
  String ecI;
  String ecL;
  String ecR;
  String ecM;
  String ecS;
  String ecN;
  String ecD;
  String ecY;
  String ecP;
  String ecSe;
  String ecSd;
  String ecU;
  String ecT;
  String ecZ;

  Ec({
    required this.ecA,
    required this.ecB,
    required this.ecF,
    required this.ecC,
    required this.ecH,
    required this.ecX,
    required this.ecO,
    required this.ecE,
    required this.ecW,
    required this.ecG,
    required this.ecI,
    required this.ecL,
    required this.ecR,
    required this.ecM,
    required this.ecS,
    required this.ecN,
    required this.ecD,
    required this.ecY,
    required this.ecP,
    required this.ecSe,
    required this.ecSd,
    required this.ecU,
    required this.ecT,
    required this.ecZ,
  });

  factory Ec.fromJson(Map<String, dynamic> json) => Ec(
        ecA: json["EC-A"],
        ecB: json["EC-B"],
        ecF: json["EC-F"],
        ecC: json["EC-C"],
        ecH: json["EC-H"],
        ecX: json["EC-X"],
        ecO: json["EC-O"],
        ecE: json["EC-E"],
        ecW: json["EC-W"],
        ecG: json["EC-G"],
        ecI: json["EC-I"],
        ecL: json["EC-L"],
        ecR: json["EC-R"],
        ecM: json["EC-M"],
        ecS: json["EC-S"],
        ecN: json["EC-N"],
        ecD: json["EC-D"],
        ecY: json["EC-Y"],
        ecP: json["EC-P"],
        ecSe: json["EC-SE"],
        ecSd: json["EC-SD"],
        ecU: json["EC-U"],
        ecT: json["EC-T"],
        ecZ: json["EC-Z"],
      );

  Map<String, dynamic> toJson() => {
        "EC-A": ecA,
        "EC-B": ecB,
        "EC-F": ecF,
        "EC-C": ecC,
        "EC-H": ecH,
        "EC-X": ecX,
        "EC-O": ecO,
        "EC-E": ecE,
        "EC-W": ecW,
        "EC-G": ecG,
        "EC-I": ecI,
        "EC-L": ecL,
        "EC-R": ecR,
        "EC-M": ecM,
        "EC-S": ecS,
        "EC-N": ecN,
        "EC-D": ecD,
        "EC-Y": ecY,
        "EC-P": ecP,
        "EC-SE": ecSe,
        "EC-SD": ecSd,
        "EC-U": ecU,
        "EC-T": ecT,
        "EC-Z": ecZ,
      };

  @override
  String toString() {
    return 'Ec(ecA: $ecA, ecB: $ecB, ecF: $ecF, ecC: $ecC, ecH: $ecH, ecX: $ecX, ecO: $ecO, ecE: $ecE, ecW: $ecW, ecG: $ecG, ecI: $ecI, ecL: $ecL, ecR: $ecR, ecM: $ecM, ecS: $ecS, ecN: $ecN, ecD: $ecD, ecY: $ecY, ecP: $ecP, ecSe: $ecSe, ecSd: $ecSd, ecU: $ecU, ecT: $ecT, ecZ: $ecZ)';
  }
}

class Eg {
  String egalx;
  String egasn;
  String egast;
  String egba;
  String egbh;
  String egbns;
  String egc;
  String egdk;
  String egdt;
  String egfym;
  String eggh;
  String eggz;
  String egis;
  String egjs;
  String egkb;
  String egkfs;
  String egkn;
  String eglx;
  String egmn;
  String egmnf;
  String egmt;
  String egpts;
  String egshg;
  String egshr;
  String egsin;
  String egsuz;
  String egwad;

  Eg({
    required this.egalx,
    required this.egasn,
    required this.egast,
    required this.egba,
    required this.egbh,
    required this.egbns,
    required this.egc,
    required this.egdk,
    required this.egdt,
    required this.egfym,
    required this.eggh,
    required this.eggz,
    required this.egis,
    required this.egjs,
    required this.egkb,
    required this.egkfs,
    required this.egkn,
    required this.eglx,
    required this.egmn,
    required this.egmnf,
    required this.egmt,
    required this.egpts,
    required this.egshg,
    required this.egshr,
    required this.egsin,
    required this.egsuz,
    required this.egwad,
  });

  factory Eg.fromJson(Map<String, dynamic> json) => Eg(
        egalx: json["EGALX"],
        egasn: json["EGASN"],
        egast: json["EGAST"],
        egba: json["EGBA"],
        egbh: json["EGBH"],
        egbns: json["EGBNS"],
        egc: json["EGC"],
        egdk: json["EGDK"],
        egdt: json["EGDT"],
        egfym: json["EGFYM"],
        eggh: json["EGGH"],
        eggz: json["EGGZ"],
        egis: json["EGIS"],
        egjs: json["EGJS"],
        egkb: json["EGKB"],
        egkfs: json["EGKFS"],
        egkn: json["EGKN"],
        eglx: json["EGLX"],
        egmn: json["EGMN"],
        egmnf: json["EGMNF"],
        egmt: json["EGMT"],
        egpts: json["EGPTS"],
        egshg: json["EGSHG"],
        egshr: json["EGSHR"],
        egsin: json["EGSIN"],
        egsuz: json["EGSUZ"],
        egwad: json["EGWAD"],
      );

  Map<String, dynamic> toJson() => {
        "EGALX": egalx,
        "EGASN": egasn,
        "EGAST": egast,
        "EGBA": egba,
        "EGBH": egbh,
        "EGBNS": egbns,
        "EGC": egc,
        "EGDK": egdk,
        "EGDT": egdt,
        "EGFYM": egfym,
        "EGGH": eggh,
        "EGGZ": eggz,
        "EGIS": egis,
        "EGJS": egjs,
        "EGKB": egkb,
        "EGKFS": egkfs,
        "EGKN": egkn,
        "EGLX": eglx,
        "EGMN": egmn,
        "EGMNF": egmnf,
        "EGMT": egmt,
        "EGPTS": egpts,
        "EGSHG": egshg,
        "EGSHR": egshr,
        "EGSIN": egsin,
        "EGSUZ": egsuz,
        "EGWAD": egwad,
      };

  @override
  String toString() {
    return 'Eg(egalx: $egalx, egasn: $egasn, egast: $egast, egba: $egba, egbh: $egbh, egbns: $egbns, egc: $egc, egdk: $egdk, egdt: $egdt, egfym: $egfym, eggh: $eggh, eggz: $eggz, egis: $egis, egjs: $egjs, egkb: $egkb, egkfs: $egkfs, egkn: $egkn, eglx: $eglx, egmn: $egmn, egmnf: $egmnf, egmt: $egmt, egpts: $egpts, egshg: $egshg, egshr: $egshr, egsin: $egsin, egsuz: $egsuz, egwad: $egwad)';
  }
}

class Gh {
  String af;
  String ah;
  String ba;
  String bo;
  String be;
  String cp;
  String ep;
  String aa;
  String ne;
  String np;
  String ot;
  String sv;
  String ue;
  String uw;
  String tv;
  String wp;
  String wn;

  Gh({
    required this.af,
    required this.ah,
    required this.ba,
    required this.bo,
    required this.be,
    required this.cp,
    required this.ep,
    required this.aa,
    required this.ne,
    required this.np,
    required this.ot,
    required this.sv,
    required this.ue,
    required this.uw,
    required this.tv,
    required this.wp,
    required this.wn,
  });

  factory Gh.fromJson(Map<String, dynamic> json) => Gh(
        af: json["AF"],
        ah: json["AH"],
        ba: json["BA"],
        bo: json["BO"],
        be: json["BE"],
        cp: json["CP"],
        ep: json["EP"],
        aa: json["AA"],
        ne: json["NE"],
        np: json["NP"],
        ot: json["OT"],
        sv: json["SV"],
        ue: json["UE"],
        uw: json["UW"],
        tv: json["TV"],
        wp: json["WP"],
        wn: json["WN"],
      );

  Map<String, dynamic> toJson() => {
        "AF": af,
        "AH": ah,
        "BA": ba,
        "BO": bo,
        "BE": be,
        "CP": cp,
        "EP": ep,
        "AA": aa,
        "NE": ne,
        "NP": np,
        "OT": ot,
        "SV": sv,
        "UE": ue,
        "UW": uw,
        "TV": tv,
        "WP": wp,
        "WN": wn,
      };

  @override
  String toString() {
    return 'Gh(af: $af, ah: $ah, ba: $ba, bo: $bo, be: $be, cp: $cp, ep: $ep, aa: $aa, ne: $ne, np: $np, ot: $ot, sv: $sv, ue: $ue, uw: $uw, tv: $tv, wp: $wp, wn: $wn)';
  }
}

class Gr {
  String i;
  String a;
  String b;
  String c;
  String d;
  String e;
  String f;
  String g;
  String h;
  String j;
  String k;
  String l;
  String m;

  Gr({
    required this.i,
    required this.a,
    required this.b,
    required this.c,
    required this.d,
    required this.e,
    required this.f,
    required this.g,
    required this.h,
    required this.j,
    required this.k,
    required this.l,
    required this.m,
  });

  factory Gr.fromJson(Map<String, dynamic> json) => Gr(
        i: json["I"],
        a: json["A"],
        b: json["B"],
        c: json["C"],
        d: json["D"],
        e: json["E"],
        f: json["F"],
        g: json["G"],
        h: json["H"],
        j: json["J"],
        k: json["K"],
        l: json["L"],
        m: json["M"],
      );

  Map<String, dynamic> toJson() => {
        "I": i,
        "A": a,
        "B": b,
        "C": c,
        "D": d,
        "E": e,
        "F": f,
        "G": g,
        "H": h,
        "J": j,
        "K": k,
        "L": l,
        "M": m,
      };

  @override
  String toString() {
    return 'Gr(i: $i, a: $a, b: $b, c: $c, d: $d, e: $e, f: $f, g: $g, h: $h, j: $j, k: $k, l: $l, m: $m)';
  }
}

class Gt {
  String gtAv;
  String gtBv;
  String gtCm;
  String gtCq;
  String gtPr;
  String gtEs;
  String gtGu;
  String gtHu;
  String gtIz;
  String gtJa;
  String gtJu;
  String gtPe;
  String gtQz;
  String gtQc;
  String gtRe;
  String gtSa;
  String gtSm;
  String gtSr;
  String gtSo;
  String gtSu;
  String gtTo;
  String gtZa;

  Gt({
    required this.gtAv,
    required this.gtBv,
    required this.gtCm,
    required this.gtCq,
    required this.gtPr,
    required this.gtEs,
    required this.gtGu,
    required this.gtHu,
    required this.gtIz,
    required this.gtJa,
    required this.gtJu,
    required this.gtPe,
    required this.gtQz,
    required this.gtQc,
    required this.gtRe,
    required this.gtSa,
    required this.gtSm,
    required this.gtSr,
    required this.gtSo,
    required this.gtSu,
    required this.gtTo,
    required this.gtZa,
  });

  factory Gt.fromJson(Map<String, dynamic> json) => Gt(
        gtAv: json["GT-AV"],
        gtBv: json["GT-BV"],
        gtCm: json["GT-CM"],
        gtCq: json["GT-CQ"],
        gtPr: json["GT-PR"],
        gtEs: json["GT-ES"],
        gtGu: json["GT-GU"],
        gtHu: json["GT-HU"],
        gtIz: json["GT-IZ"],
        gtJa: json["GT-JA"],
        gtJu: json["GT-JU"],
        gtPe: json["GT-PE"],
        gtQz: json["GT-QZ"],
        gtQc: json["GT-QC"],
        gtRe: json["GT-RE"],
        gtSa: json["GT-SA"],
        gtSm: json["GT-SM"],
        gtSr: json["GT-SR"],
        gtSo: json["GT-SO"],
        gtSu: json["GT-SU"],
        gtTo: json["GT-TO"],
        gtZa: json["GT-ZA"],
      );

  Map<String, dynamic> toJson() => {
        "GT-AV": gtAv,
        "GT-BV": gtBv,
        "GT-CM": gtCm,
        "GT-CQ": gtCq,
        "GT-PR": gtPr,
        "GT-ES": gtEs,
        "GT-GU": gtGu,
        "GT-HU": gtHu,
        "GT-IZ": gtIz,
        "GT-JA": gtJa,
        "GT-JU": gtJu,
        "GT-PE": gtPe,
        "GT-QZ": gtQz,
        "GT-QC": gtQc,
        "GT-RE": gtRe,
        "GT-SA": gtSa,
        "GT-SM": gtSm,
        "GT-SR": gtSr,
        "GT-SO": gtSo,
        "GT-SU": gtSu,
        "GT-TO": gtTo,
        "GT-ZA": gtZa,
      };

  @override
  String toString() {
    return 'Gt(gtAv: $gtAv, gtBv: $gtBv, gtCm: $gtCm, gtCq: $gtCq, gtPr: $gtPr, gtEs: $gtEs, gtGu: $gtGu, gtHu: $gtHu, gtIz: $gtIz, gtJa: $gtJa, gtJu: $gtJu, gtPe: $gtPe, gtQz: $gtQz, gtQc: $gtQc, gtRe: $gtRe, gtSa: $gtSa, gtSm: $gtSm, gtSr: $gtSr, gtSo: $gtSo, gtSu: $gtSu, gtTo: $gtTo, gtZa: $gtZa)';
  }
}

class Hk {
  String hongKong;
  String kowloon;
  String newTerritories;

  Hk({
    required this.hongKong,
    required this.kowloon,
    required this.newTerritories,
  });

  factory Hk.fromJson(Map<String, dynamic> json) => Hk(
        hongKong: json["HONG KONG"],
        kowloon: json["KOWLOON"],
        newTerritories: json["NEW TERRITORIES"],
      );

  Map<String, dynamic> toJson() => {
        "HONG KONG": hongKong,
        "KOWLOON": kowloon,
        "NEW TERRITORIES": newTerritories,
      };

  @override
  String toString() =>
      'Hk(hongKong: $hongKong, kowloon: $kowloon, newTerritories: $newTerritories)';
}

class Hn {
  String hnAt;
  String hnIb;
  String hnCh;
  String hnCl;
  String hnCm;
  String hnCp;
  String hnCr;
  String hnEp;
  String hnFm;
  String hnGd;
  String hnIn;
  String hnLe;
  String hnLp;
  String hnOc;
  String hnOl;
  String hnSb;
  String hnVa;
  String hnYo;

  Hn({
    required this.hnAt,
    required this.hnIb,
    required this.hnCh,
    required this.hnCl,
    required this.hnCm,
    required this.hnCp,
    required this.hnCr,
    required this.hnEp,
    required this.hnFm,
    required this.hnGd,
    required this.hnIn,
    required this.hnLe,
    required this.hnLp,
    required this.hnOc,
    required this.hnOl,
    required this.hnSb,
    required this.hnVa,
    required this.hnYo,
  });

  factory Hn.fromJson(Map<String, dynamic> json) => Hn(
        hnAt: json["HN-AT"],
        hnIb: json["HN-IB"],
        hnCh: json["HN-CH"],
        hnCl: json["HN-CL"],
        hnCm: json["HN-CM"],
        hnCp: json["HN-CP"],
        hnCr: json["HN-CR"],
        hnEp: json["HN-EP"],
        hnFm: json["HN-FM"],
        hnGd: json["HN-GD"],
        hnIn: json["HN-IN"],
        hnLe: json["HN-LE"],
        hnLp: json["HN-LP"],
        hnOc: json["HN-OC"],
        hnOl: json["HN-OL"],
        hnSb: json["HN-SB"],
        hnVa: json["HN-VA"],
        hnYo: json["HN-YO"],
      );

  Map<String, dynamic> toJson() => {
        "HN-AT": hnAt,
        "HN-IB": hnIb,
        "HN-CH": hnCh,
        "HN-CL": hnCl,
        "HN-CM": hnCm,
        "HN-CP": hnCp,
        "HN-CR": hnCr,
        "HN-EP": hnEp,
        "HN-FM": hnFm,
        "HN-GD": hnGd,
        "HN-IN": hnIn,
        "HN-LE": hnLe,
        "HN-LP": hnLp,
        "HN-OC": hnOc,
        "HN-OL": hnOl,
        "HN-SB": hnSb,
        "HN-VA": hnVa,
        "HN-YO": hnYo,
      };

  @override
  String toString() {
    return 'Hn(hnAt: $hnAt, hnIb: $hnIb, hnCh: $hnCh, hnCl: $hnCl, hnCm: $hnCm, hnCp: $hnCp, hnCr: $hnCr, hnEp: $hnEp, hnFm: $hnFm, hnGd: $hnGd, hnIn: $hnIn, hnLe: $hnLe, hnLp: $hnLp, hnOc: $hnOc, hnOl: $hnOl, hnSb: $hnSb, hnVa: $hnVa, hnYo: $hnYo)';
  }
}

class Hu {
  String bk;
  String be;
  String ba;
  String bz;
  String bu;
  String cs;
  String fe;
  String gs;
  String hb;
  String he;
  String jn;
  String ke;
  String no;
  String pe;
  String so;
  String sz;
  String to;
  String va;
  String ve;
  String za;

  Hu({
    required this.bk,
    required this.be,
    required this.ba,
    required this.bz,
    required this.bu,
    required this.cs,
    required this.fe,
    required this.gs,
    required this.hb,
    required this.he,
    required this.jn,
    required this.ke,
    required this.no,
    required this.pe,
    required this.so,
    required this.sz,
    required this.to,
    required this.va,
    required this.ve,
    required this.za,
  });

  factory Hu.fromJson(Map<String, dynamic> json) => Hu(
        bk: json["BK"],
        be: json["BE"],
        ba: json["BA"],
        bz: json["BZ"],
        bu: json["BU"],
        cs: json["CS"],
        fe: json["FE"],
        gs: json["GS"],
        hb: json["HB"],
        he: json["HE"],
        jn: json["JN"],
        ke: json["KE"],
        no: json["NO"],
        pe: json["PE"],
        so: json["SO"],
        sz: json["SZ"],
        to: json["TO"],
        va: json["VA"],
        ve: json["VE"],
        za: json["ZA"],
      );

  Map<String, dynamic> toJson() => {
        "BK": bk,
        "BE": be,
        "BA": ba,
        "BZ": bz,
        "BU": bu,
        "CS": cs,
        "FE": fe,
        "GS": gs,
        "HB": hb,
        "HE": he,
        "JN": jn,
        "KE": ke,
        "NO": no,
        "PE": pe,
        "SO": so,
        "SZ": sz,
        "TO": to,
        "VA": va,
        "VE": ve,
        "ZA": za,
      };

  @override
  String toString() {
    return 'Hu(bk: $bk, be: $be, ba: $ba, bz: $bz, bu: $bu, cs: $cs, fe: $fe, gs: $gs, hb: $hb, he: $he, jn: $jn, ke: $ke, no: $no, pe: $pe, so: $so, sz: $sz, to: $to, va: $va, ve: $ve, za: $za)';
  }
}

class Id {
  String ac;
  String su;
  String sb;
  String ri;
  String kr;
  String ja;
  String ss;
  String bb;
  String be;
  String la;
  String jk;
  String jb;
  String bt;
  String jt;
  String ji;
  String yo;
  String ba;
  String nb;
  String nt;
  String kb;
  String kt;
  String ki;
  String ks;
  String ku;
  String sa;
  String st;
  String sg;
  String sr;
  String sn;
  String go;
  String ma;
  String mu;
  String pa;
  String pb;

  Id({
    required this.ac,
    required this.su,
    required this.sb,
    required this.ri,
    required this.kr,
    required this.ja,
    required this.ss,
    required this.bb,
    required this.be,
    required this.la,
    required this.jk,
    required this.jb,
    required this.bt,
    required this.jt,
    required this.ji,
    required this.yo,
    required this.ba,
    required this.nb,
    required this.nt,
    required this.kb,
    required this.kt,
    required this.ki,
    required this.ks,
    required this.ku,
    required this.sa,
    required this.st,
    required this.sg,
    required this.sr,
    required this.sn,
    required this.go,
    required this.ma,
    required this.mu,
    required this.pa,
    required this.pb,
  });

  factory Id.fromJson(Map<String, dynamic> json) => Id(
        ac: json["AC"],
        su: json["SU"],
        sb: json["SB"],
        ri: json["RI"],
        kr: json["KR"],
        ja: json["JA"],
        ss: json["SS"],
        bb: json["BB"],
        be: json["BE"],
        la: json["LA"],
        jk: json["JK"],
        jb: json["JB"],
        bt: json["BT"],
        jt: json["JT"],
        ji: json["JI"],
        yo: json["YO"],
        ba: json["BA"],
        nb: json["NB"],
        nt: json["NT"],
        kb: json["KB"],
        kt: json["KT"],
        ki: json["KI"],
        ks: json["KS"],
        ku: json["KU"],
        sa: json["SA"],
        st: json["ST"],
        sg: json["SG"],
        sr: json["SR"],
        sn: json["SN"],
        go: json["GO"],
        ma: json["MA"],
        mu: json["MU"],
        pa: json["PA"],
        pb: json["PB"],
      );

  Map<String, dynamic> toJson() => {
        "AC": ac,
        "SU": su,
        "SB": sb,
        "RI": ri,
        "KR": kr,
        "JA": ja,
        "SS": ss,
        "BB": bb,
        "BE": be,
        "LA": la,
        "JK": jk,
        "JB": jb,
        "BT": bt,
        "JT": jt,
        "JI": ji,
        "YO": yo,
        "BA": ba,
        "NB": nb,
        "NT": nt,
        "KB": kb,
        "KT": kt,
        "KI": ki,
        "KS": ks,
        "KU": ku,
        "SA": sa,
        "ST": st,
        "SG": sg,
        "SR": sr,
        "SN": sn,
        "GO": go,
        "MA": ma,
        "MU": mu,
        "PA": pa,
        "PB": pb,
      };

  @override
  String toString() {
    return 'Id(ac: $ac, su: $su, sb: $sb, ri: $ri, kr: $kr, ja: $ja, ss: $ss, bb: $bb, be: $be, la: $la, jk: $jk, jb: $jb, bt: $bt, jt: $jt, ji: $ji, yo: $yo, ba: $ba, nb: $nb, nt: $nt, kb: $kb, kt: $kt, ki: $ki, ks: $ks, ku: $ku, sa: $sa, st: $st, sg: $sg, sr: $sr, sn: $sn, go: $go, ma: $ma, mu: $mu, pa: $pa, pb: $pb)';
  }
}

class Ie {
  String cw;
  String cn;
  String ce;
  String co;
  String dl;
  String d;
  String g;
  String ky;
  String ke;
  String kk;
  String ls;
  String lm;
  String lk;
  String ld;
  String lh;
  String mo;
  String mh;
  String mn;
  String oy;
  String rn;
  String so;
  String ta;
  String wd;
  String wh;
  String wx;
  String ww;

  Ie({
    required this.cw,
    required this.cn,
    required this.ce,
    required this.co,
    required this.dl,
    required this.d,
    required this.g,
    required this.ky,
    required this.ke,
    required this.kk,
    required this.ls,
    required this.lm,
    required this.lk,
    required this.ld,
    required this.lh,
    required this.mo,
    required this.mh,
    required this.mn,
    required this.oy,
    required this.rn,
    required this.so,
    required this.ta,
    required this.wd,
    required this.wh,
    required this.wx,
    required this.ww,
  });

  factory Ie.fromJson(Map<String, dynamic> json) => Ie(
        cw: json["CW"],
        cn: json["CN"],
        ce: json["CE"],
        co: json["CO"],
        dl: json["DL"],
        d: json["D"],
        g: json["G"],
        ky: json["KY"],
        ke: json["KE"],
        kk: json["KK"],
        ls: json["LS"],
        lm: json["LM"],
        lk: json["LK"],
        ld: json["LD"],
        lh: json["LH"],
        mo: json["MO"],
        mh: json["MH"],
        mn: json["MN"],
        oy: json["OY"],
        rn: json["RN"],
        so: json["SO"],
        ta: json["TA"],
        wd: json["WD"],
        wh: json["WH"],
        wx: json["WX"],
        ww: json["WW"],
      );

  Map<String, dynamic> toJson() => {
        "CW": cw,
        "CN": cn,
        "CE": ce,
        "CO": co,
        "DL": dl,
        "D": d,
        "G": g,
        "KY": ky,
        "KE": ke,
        "KK": kk,
        "LS": ls,
        "LM": lm,
        "LK": lk,
        "LD": ld,
        "LH": lh,
        "MO": mo,
        "MH": mh,
        "MN": mn,
        "OY": oy,
        "RN": rn,
        "SO": so,
        "TA": ta,
        "WD": wd,
        "WH": wh,
        "WX": wx,
        "WW": ww,
      };

  @override
  String toString() {
    return 'Ie(cw: $cw, cn: $cn, ce: $ce, co: $co, dl: $dl, d: $d, g: $g, ky: $ky, ke: $ke, kk: $kk, ls: $ls, lm: $lm, lk: $lk, ld: $ld, lh: $lh, mo: $mo, mh: $mh, mn: $mn, oy: $oy, rn: $rn, so: $so, ta: $ta, wd: $wd, wh: $wh, wx: $wx, ww: $ww)';
  }
}

class Ir {
  String khz;
  String thr;
  String ilm;
  String bhr;
  String adl;
  String esf;
  String yzd;
  String krh;
  String krn;
  String hdn;
  String gzn;
  String zjn;
  String lrs;
  String abz;
  String eaz;
  String waz;
  String chb;
  String skh;
  String rkh;
  String nkh;
  String smn;
  String frs;
  String qhm;
  String krd;
  String kbd;
  String gls;
  String gil;
  String mzn;
  String mkz;
  String hrz;
  String sbn;

  Ir({
    required this.khz,
    required this.thr,
    required this.ilm,
    required this.bhr,
    required this.adl,
    required this.esf,
    required this.yzd,
    required this.krh,
    required this.krn,
    required this.hdn,
    required this.gzn,
    required this.zjn,
    required this.lrs,
    required this.abz,
    required this.eaz,
    required this.waz,
    required this.chb,
    required this.skh,
    required this.rkh,
    required this.nkh,
    required this.smn,
    required this.frs,
    required this.qhm,
    required this.krd,
    required this.kbd,
    required this.gls,
    required this.gil,
    required this.mzn,
    required this.mkz,
    required this.hrz,
    required this.sbn,
  });

  factory Ir.fromJson(Map<String, dynamic> json) => Ir(
        khz: json["KHZ"],
        thr: json["THR"],
        ilm: json["ILM"],
        bhr: json["BHR"],
        adl: json["ADL"],
        esf: json["ESF"],
        yzd: json["YZD"],
        krh: json["KRH"],
        krn: json["KRN"],
        hdn: json["HDN"],
        gzn: json["GZN"],
        zjn: json["ZJN"],
        lrs: json["LRS"],
        abz: json["ABZ"],
        eaz: json["EAZ"],
        waz: json["WAZ"],
        chb: json["CHB"],
        skh: json["SKH"],
        rkh: json["RKH"],
        nkh: json["NKH"],
        smn: json["SMN"],
        frs: json["FRS"],
        qhm: json["QHM"],
        krd: json["KRD"],
        kbd: json["KBD"],
        gls: json["GLS"],
        gil: json["GIL"],
        mzn: json["MZN"],
        mkz: json["MKZ"],
        hrz: json["HRZ"],
        sbn: json["SBN"],
      );

  Map<String, dynamic> toJson() => {
        "KHZ": khz,
        "THR": thr,
        "ILM": ilm,
        "BHR": bhr,
        "ADL": adl,
        "ESF": esf,
        "YZD": yzd,
        "KRH": krh,
        "KRN": krn,
        "HDN": hdn,
        "GZN": gzn,
        "ZJN": zjn,
        "LRS": lrs,
        "ABZ": abz,
        "EAZ": eaz,
        "WAZ": waz,
        "CHB": chb,
        "SKH": skh,
        "RKH": rkh,
        "NKH": nkh,
        "SMN": smn,
        "FRS": frs,
        "QHM": qhm,
        "KRD": krd,
        "KBD": kbd,
        "GLS": gls,
        "GIL": gil,
        "MZN": mzn,
        "MKZ": mkz,
        "HRZ": hrz,
        "SBN": sbn,
      };

  @override
  String toString() {
    return 'Ir(khz: $khz, thr: $thr, ilm: $ilm, bhr: $bhr, adl: $adl, esf: $esf, yzd: $yzd, krh: $krh, krn: $krn, hdn: $hdn, gzn: $gzn, zjn: $zjn, lrs: $lrs, abz: $abz, eaz: $eaz, waz: $waz, chb: $chb, skh: $skh, rkh: $rkh, nkh: $nkh, smn: $smn, frs: $frs, qhm: $qhm, krd: $krd, kbd: $kbd, gls: $gls, gil: $gil, mzn: $mzn, mkz: $mkz, hrz: $hrz, sbn: $sbn)';
  }
}

class Jm {
  String jm01;
  String jm02;
  String jm03;
  String jm04;
  String jm05;
  String jm06;
  String jm07;
  String jm08;
  String jm09;
  String jm10;
  String jm11;
  String jm12;
  String jm13;
  String jm14;

  Jm({
    required this.jm01,
    required this.jm02,
    required this.jm03,
    required this.jm04,
    required this.jm05,
    required this.jm06,
    required this.jm07,
    required this.jm08,
    required this.jm09,
    required this.jm10,
    required this.jm11,
    required this.jm12,
    required this.jm13,
    required this.jm14,
  });

  factory Jm.fromJson(Map<String, dynamic> json) => Jm(
        jm01: json["JM-01"],
        jm02: json["JM-02"],
        jm03: json["JM-03"],
        jm04: json["JM-04"],
        jm05: json["JM-05"],
        jm06: json["JM-06"],
        jm07: json["JM-07"],
        jm08: json["JM-08"],
        jm09: json["JM-09"],
        jm10: json["JM-10"],
        jm11: json["JM-11"],
        jm12: json["JM-12"],
        jm13: json["JM-13"],
        jm14: json["JM-14"],
      );

  Map<String, dynamic> toJson() => {
        "JM-01": jm01,
        "JM-02": jm02,
        "JM-03": jm03,
        "JM-04": jm04,
        "JM-05": jm05,
        "JM-06": jm06,
        "JM-07": jm07,
        "JM-08": jm08,
        "JM-09": jm09,
        "JM-10": jm10,
        "JM-11": jm11,
        "JM-12": jm12,
        "JM-13": jm13,
        "JM-14": jm14,
      };

  @override
  String toString() {
    return 'Jm(jm01: $jm01, jm02: $jm02, jm03: $jm03, jm04: $jm04, jm05: $jm05, jm06: $jm06, jm07: $jm07, jm08: $jm08, jm09: $jm09, jm10: $jm10, jm11: $jm11, jm12: $jm12, jm13: $jm13, jm14: $jm14)';
  }
}

class Jp {
  String jp01;
  String jp02;
  String jp03;
  String jp04;
  String jp05;
  String jp06;
  String jp07;
  String jp08;
  String jp09;
  String jp10;
  String jp11;
  String jp12;
  String jp13;
  String jp14;
  String jp15;
  String jp16;
  String jp17;
  String jp18;
  String jp19;
  String jp20;
  String jp21;
  String jp22;
  String jp23;
  String jp24;
  String jp25;
  String jp26;
  String jp27;
  String jp28;
  String jp29;
  String jp30;
  String jp31;
  String jp32;
  String jp33;
  String jp34;
  String jp35;
  String jp36;
  String jp37;
  String jp38;
  String jp39;
  String jp40;
  String jp41;
  String jp42;
  String jp43;
  String jp44;
  String jp45;
  String jp46;
  String jp47;

  Jp({
    required this.jp01,
    required this.jp02,
    required this.jp03,
    required this.jp04,
    required this.jp05,
    required this.jp06,
    required this.jp07,
    required this.jp08,
    required this.jp09,
    required this.jp10,
    required this.jp11,
    required this.jp12,
    required this.jp13,
    required this.jp14,
    required this.jp15,
    required this.jp16,
    required this.jp17,
    required this.jp18,
    required this.jp19,
    required this.jp20,
    required this.jp21,
    required this.jp22,
    required this.jp23,
    required this.jp24,
    required this.jp25,
    required this.jp26,
    required this.jp27,
    required this.jp28,
    required this.jp29,
    required this.jp30,
    required this.jp31,
    required this.jp32,
    required this.jp33,
    required this.jp34,
    required this.jp35,
    required this.jp36,
    required this.jp37,
    required this.jp38,
    required this.jp39,
    required this.jp40,
    required this.jp41,
    required this.jp42,
    required this.jp43,
    required this.jp44,
    required this.jp45,
    required this.jp46,
    required this.jp47,
  });

  factory Jp.fromJson(Map<String, dynamic> json) => Jp(
        jp01: json["JP01"],
        jp02: json["JP02"],
        jp03: json["JP03"],
        jp04: json["JP04"],
        jp05: json["JP05"],
        jp06: json["JP06"],
        jp07: json["JP07"],
        jp08: json["JP08"],
        jp09: json["JP09"],
        jp10: json["JP10"],
        jp11: json["JP11"],
        jp12: json["JP12"],
        jp13: json["JP13"],
        jp14: json["JP14"],
        jp15: json["JP15"],
        jp16: json["JP16"],
        jp17: json["JP17"],
        jp18: json["JP18"],
        jp19: json["JP19"],
        jp20: json["JP20"],
        jp21: json["JP21"],
        jp22: json["JP22"],
        jp23: json["JP23"],
        jp24: json["JP24"],
        jp25: json["JP25"],
        jp26: json["JP26"],
        jp27: json["JP27"],
        jp28: json["JP28"],
        jp29: json["JP29"],
        jp30: json["JP30"],
        jp31: json["JP31"],
        jp32: json["JP32"],
        jp33: json["JP33"],
        jp34: json["JP34"],
        jp35: json["JP35"],
        jp36: json["JP36"],
        jp37: json["JP37"],
        jp38: json["JP38"],
        jp39: json["JP39"],
        jp40: json["JP40"],
        jp41: json["JP41"],
        jp42: json["JP42"],
        jp43: json["JP43"],
        jp44: json["JP44"],
        jp45: json["JP45"],
        jp46: json["JP46"],
        jp47: json["JP47"],
      );

  Map<String, dynamic> toJson() => {
        "JP01": jp01,
        "JP02": jp02,
        "JP03": jp03,
        "JP04": jp04,
        "JP05": jp05,
        "JP06": jp06,
        "JP07": jp07,
        "JP08": jp08,
        "JP09": jp09,
        "JP10": jp10,
        "JP11": jp11,
        "JP12": jp12,
        "JP13": jp13,
        "JP14": jp14,
        "JP15": jp15,
        "JP16": jp16,
        "JP17": jp17,
        "JP18": jp18,
        "JP19": jp19,
        "JP20": jp20,
        "JP21": jp21,
        "JP22": jp22,
        "JP23": jp23,
        "JP24": jp24,
        "JP25": jp25,
        "JP26": jp26,
        "JP27": jp27,
        "JP28": jp28,
        "JP29": jp29,
        "JP30": jp30,
        "JP31": jp31,
        "JP32": jp32,
        "JP33": jp33,
        "JP34": jp34,
        "JP35": jp35,
        "JP36": jp36,
        "JP37": jp37,
        "JP38": jp38,
        "JP39": jp39,
        "JP40": jp40,
        "JP41": jp41,
        "JP42": jp42,
        "JP43": jp43,
        "JP44": jp44,
        "JP45": jp45,
        "JP46": jp46,
        "JP47": jp47,
      };

  @override
  String toString() {
    return 'Jp(jp01: $jp01, jp02: $jp02, jp03: $jp03, jp04: $jp04, jp05: $jp05, jp06: $jp06, jp07: $jp07, jp08: $jp08, jp09: $jp09, jp10: $jp10, jp11: $jp11, jp12: $jp12, jp13: $jp13, jp14: $jp14, jp15: $jp15, jp16: $jp16, jp17: $jp17, jp18: $jp18, jp19: $jp19, jp20: $jp20, jp21: $jp21, jp22: $jp22, jp23: $jp23, jp24: $jp24, jp25: $jp25, jp26: $jp26, jp27: $jp27, jp28: $jp28, jp29: $jp29, jp30: $jp30, jp31: $jp31, jp32: $jp32, jp33: $jp33, jp34: $jp34, jp35: $jp35, jp36: $jp36, jp37: $jp37, jp38: $jp38, jp39: $jp39, jp40: $jp40, jp41: $jp41, jp42: $jp42, jp43: $jp43, jp44: $jp44, jp45: $jp45, jp46: $jp46, jp47: $jp47)';
  }
}

class Ke {
  String ke01;
  String ke02;
  String ke03;
  String ke04;
  String ke05;
  String ke06;
  String ke07;
  String ke08;
  String ke09;
  String ke10;
  String ke11;
  String ke12;
  String ke13;
  String ke14;
  String ke15;
  String ke16;
  String ke17;
  String ke18;
  String ke19;
  String ke20;
  String ke21;
  String ke22;
  String ke23;
  String ke24;
  String ke25;
  String ke26;
  String ke27;
  String ke28;
  String ke29;
  String ke30;
  String ke31;
  String ke32;
  String ke33;
  String ke34;
  String ke35;
  String ke36;
  String ke37;
  String ke38;
  String ke39;
  String ke40;
  String ke41;
  String ke42;
  String ke43;
  String ke44;
  String ke45;
  String ke46;
  String ke47;

  Ke({
    required this.ke01,
    required this.ke02,
    required this.ke03,
    required this.ke04,
    required this.ke05,
    required this.ke06,
    required this.ke07,
    required this.ke08,
    required this.ke09,
    required this.ke10,
    required this.ke11,
    required this.ke12,
    required this.ke13,
    required this.ke14,
    required this.ke15,
    required this.ke16,
    required this.ke17,
    required this.ke18,
    required this.ke19,
    required this.ke20,
    required this.ke21,
    required this.ke22,
    required this.ke23,
    required this.ke24,
    required this.ke25,
    required this.ke26,
    required this.ke27,
    required this.ke28,
    required this.ke29,
    required this.ke30,
    required this.ke31,
    required this.ke32,
    required this.ke33,
    required this.ke34,
    required this.ke35,
    required this.ke36,
    required this.ke37,
    required this.ke38,
    required this.ke39,
    required this.ke40,
    required this.ke41,
    required this.ke42,
    required this.ke43,
    required this.ke44,
    required this.ke45,
    required this.ke46,
    required this.ke47,
  });

  factory Ke.fromJson(Map<String, dynamic> json) => Ke(
        ke01: json["KE01"],
        ke02: json["KE02"],
        ke03: json["KE03"],
        ke04: json["KE04"],
        ke05: json["KE05"],
        ke06: json["KE06"],
        ke07: json["KE07"],
        ke08: json["KE08"],
        ke09: json["KE09"],
        ke10: json["KE10"],
        ke11: json["KE11"],
        ke12: json["KE12"],
        ke13: json["KE13"],
        ke14: json["KE14"],
        ke15: json["KE15"],
        ke16: json["KE16"],
        ke17: json["KE17"],
        ke18: json["KE18"],
        ke19: json["KE19"],
        ke20: json["KE20"],
        ke21: json["KE21"],
        ke22: json["KE22"],
        ke23: json["KE23"],
        ke24: json["KE24"],
        ke25: json["KE25"],
        ke26: json["KE26"],
        ke27: json["KE27"],
        ke28: json["KE28"],
        ke29: json["KE29"],
        ke30: json["KE30"],
        ke31: json["KE31"],
        ke32: json["KE32"],
        ke33: json["KE33"],
        ke34: json["KE34"],
        ke35: json["KE35"],
        ke36: json["KE36"],
        ke37: json["KE37"],
        ke38: json["KE38"],
        ke39: json["KE39"],
        ke40: json["KE40"],
        ke41: json["KE41"],
        ke42: json["KE42"],
        ke43: json["KE43"],
        ke44: json["KE44"],
        ke45: json["KE45"],
        ke46: json["KE46"],
        ke47: json["KE47"],
      );

  Map<String, dynamic> toJson() => {
        "KE01": ke01,
        "KE02": ke02,
        "KE03": ke03,
        "KE04": ke04,
        "KE05": ke05,
        "KE06": ke06,
        "KE07": ke07,
        "KE08": ke08,
        "KE09": ke09,
        "KE10": ke10,
        "KE11": ke11,
        "KE12": ke12,
        "KE13": ke13,
        "KE14": ke14,
        "KE15": ke15,
        "KE16": ke16,
        "KE17": ke17,
        "KE18": ke18,
        "KE19": ke19,
        "KE20": ke20,
        "KE21": ke21,
        "KE22": ke22,
        "KE23": ke23,
        "KE24": ke24,
        "KE25": ke25,
        "KE26": ke26,
        "KE27": ke27,
        "KE28": ke28,
        "KE29": ke29,
        "KE30": ke30,
        "KE31": ke31,
        "KE32": ke32,
        "KE33": ke33,
        "KE34": ke34,
        "KE35": ke35,
        "KE36": ke36,
        "KE37": ke37,
        "KE38": ke38,
        "KE39": ke39,
        "KE40": ke40,
        "KE41": ke41,
        "KE42": ke42,
        "KE43": ke43,
        "KE44": ke44,
        "KE45": ke45,
        "KE46": ke46,
        "KE47": ke47,
      };

  @override
  String toString() {
    return 'Ke(ke01: $ke01, ke02: $ke02, ke03: $ke03, ke04: $ke04, ke05: $ke05, ke06: $ke06, ke07: $ke07, ke08: $ke08, ke09: $ke09, ke10: $ke10, ke11: $ke11, ke12: $ke12, ke13: $ke13, ke14: $ke14, ke15: $ke15, ke16: $ke16, ke17: $ke17, ke18: $ke18, ke19: $ke19, ke20: $ke20, ke21: $ke21, ke22: $ke22, ke23: $ke23, ke24: $ke24, ke25: $ke25, ke26: $ke26, ke27: $ke27, ke28: $ke28, ke29: $ke29, ke30: $ke30, ke31: $ke31, ke32: $ke32, ke33: $ke33, ke34: $ke34, ke35: $ke35, ke36: $ke36, ke37: $ke37, ke38: $ke38, ke39: $ke39, ke40: $ke40, ke41: $ke41, ke42: $ke42, ke43: $ke43, ke44: $ke44, ke45: $ke45, ke46: $ke46, ke47: $ke47)';
  }
}

class Kn {
  String knk;
  String knn;
  String kn01;
  String kn02;
  String kn03;
  String kn04;
  String kn05;
  String kn06;
  String kn07;
  String kn08;
  String kn09;
  String kn10;
  String kn11;
  String kn12;
  String kn13;
  String kn15;

  Kn({
    required this.knk,
    required this.knn,
    required this.kn01,
    required this.kn02,
    required this.kn03,
    required this.kn04,
    required this.kn05,
    required this.kn06,
    required this.kn07,
    required this.kn08,
    required this.kn09,
    required this.kn10,
    required this.kn11,
    required this.kn12,
    required this.kn13,
    required this.kn15,
  });

  factory Kn.fromJson(Map<String, dynamic> json) => Kn(
        knk: json["KNK"],
        knn: json["KNN"],
        kn01: json["KN01"],
        kn02: json["KN02"],
        kn03: json["KN03"],
        kn04: json["KN04"],
        kn05: json["KN05"],
        kn06: json["KN06"],
        kn07: json["KN07"],
        kn08: json["KN08"],
        kn09: json["KN09"],
        kn10: json["KN10"],
        kn11: json["KN11"],
        kn12: json["KN12"],
        kn13: json["KN13"],
        kn15: json["KN15"],
      );

  Map<String, dynamic> toJson() => {
        "KNK": knk,
        "KNN": knn,
        "KN01": kn01,
        "KN02": kn02,
        "KN03": kn03,
        "KN04": kn04,
        "KN05": kn05,
        "KN06": kn06,
        "KN07": kn07,
        "KN08": kn08,
        "KN09": kn09,
        "KN10": kn10,
        "KN11": kn11,
        "KN12": kn12,
        "KN13": kn13,
        "KN15": kn15,
      };

  @override
  String toString() {
    return 'Kn(knk: $knk, knn: $knn, kn01: $kn01, kn02: $kn02, kn03: $kn03, kn04: $kn04, kn05: $kn05, kn06: $kn06, kn07: $kn07, kn08: $kn08, kn09: $kn09, kn10: $kn10, kn11: $kn11, kn12: $kn12, kn13: $kn13, kn15: $kn15)';
  }
}

class La {
  String at;
  String bk;
  String bl;
  String ch;
  String ho;
  String kh;
  String lm;
  String lp;
  String ou;
  String ph;
  String sl;
  String sv;
  String vi;
  String vt;
  String xa;
  String xe;
  String xi;
  String xs;

  La({
    required this.at,
    required this.bk,
    required this.bl,
    required this.ch,
    required this.ho,
    required this.kh,
    required this.lm,
    required this.lp,
    required this.ou,
    required this.ph,
    required this.sl,
    required this.sv,
    required this.vi,
    required this.vt,
    required this.xa,
    required this.xe,
    required this.xi,
    required this.xs,
  });

  factory La.fromJson(Map<String, dynamic> json) => La(
        at: json["AT"],
        bk: json["BK"],
        bl: json["BL"],
        ch: json["CH"],
        ho: json["HO"],
        kh: json["KH"],
        lm: json["LM"],
        lp: json["LP"],
        ou: json["OU"],
        ph: json["PH"],
        sl: json["SL"],
        sv: json["SV"],
        vi: json["VI"],
        vt: json["VT"],
        xa: json["XA"],
        xe: json["XE"],
        xi: json["XI"],
        xs: json["XS"],
      );

  Map<String, dynamic> toJson() => {
        "AT": at,
        "BK": bk,
        "BL": bl,
        "CH": ch,
        "HO": ho,
        "KH": kh,
        "LM": lm,
        "LP": lp,
        "OU": ou,
        "PH": ph,
        "SL": sl,
        "SV": sv,
        "VI": vi,
        "VT": vt,
        "XA": xa,
        "XE": xe,
        "XI": xi,
        "XS": xs,
      };

  @override
  String toString() {
    return 'La(at: $at, bk: $bk, bl: $bl, ch: $ch, ho: $ho, kh: $kh, lm: $lm, lp: $lp, ou: $ou, ph: $ph, sl: $sl, sv: $sv, vi: $vi, vt: $vt, xa: $xa, xe: $xe, xi: $xi, xs: $xs)';
  }
}

class Lr {
  String bm;
  String bn;
  String ga;
  String gb;
  String gc;
  String gg;
  String gk;
  String lo;
  String ma;
  String my;
  String mo;
  String nm;
  String rv;
  String rg;
  String sn;

  Lr({
    required this.bm,
    required this.bn,
    required this.ga,
    required this.gb,
    required this.gc,
    required this.gg,
    required this.gk,
    required this.lo,
    required this.ma,
    required this.my,
    required this.mo,
    required this.nm,
    required this.rv,
    required this.rg,
    required this.sn,
  });

  factory Lr.fromJson(Map<String, dynamic> json) => Lr(
        bm: json["BM"],
        bn: json["BN"],
        ga: json["GA"],
        gb: json["GB"],
        gc: json["GC"],
        gg: json["GG"],
        gk: json["GK"],
        lo: json["LO"],
        ma: json["MA"],
        my: json["MY"],
        mo: json["MO"],
        nm: json["NM"],
        rv: json["RV"],
        rg: json["RG"],
        sn: json["SN"],
      );

  Map<String, dynamic> toJson() => {
        "BM": bm,
        "BN": bn,
        "GA": ga,
        "GB": gb,
        "GC": gc,
        "GG": gg,
        "GK": gk,
        "LO": lo,
        "MA": ma,
        "MY": my,
        "MO": mo,
        "NM": nm,
        "RV": rv,
        "RG": rg,
        "SN": sn,
      };

  @override
  String toString() {
    return 'Lr(bm: $bm, bn: $bn, ga: $ga, gb: $gb, gc: $gc, gg: $gg, gk: $gk, lo: $lo, ma: $ma, my: $my, mo: $mo, nm: $nm, rv: $rv, rg: $rg, sn: $sn)';
  }
}

class Md {
  String c;
  String bl;
  String an;
  String bs;
  String br;
  String ch;
  String ct;
  String cl;
  String cs;
  String cm;
  String cr;
  String dn;
  String dr;
  String db;
  String ed;
  String fl;
  String fr;
  String ge;
  String gl;
  String hn;
  String il;
  String lv;
  String ns;
  String oc;
  String or;
  String rz;
  String rs;
  String sg;
  String sr;
  String st;
  String sd;
  String sv;
  String tr;
  String tl;
  String un;

  Md({
    required this.c,
    required this.bl,
    required this.an,
    required this.bs,
    required this.br,
    required this.ch,
    required this.ct,
    required this.cl,
    required this.cs,
    required this.cm,
    required this.cr,
    required this.dn,
    required this.dr,
    required this.db,
    required this.ed,
    required this.fl,
    required this.fr,
    required this.ge,
    required this.gl,
    required this.hn,
    required this.il,
    required this.lv,
    required this.ns,
    required this.oc,
    required this.or,
    required this.rz,
    required this.rs,
    required this.sg,
    required this.sr,
    required this.st,
    required this.sd,
    required this.sv,
    required this.tr,
    required this.tl,
    required this.un,
  });

  factory Md.fromJson(Map<String, dynamic> json) => Md(
        c: json["C"],
        bl: json["BL"],
        an: json["AN"],
        bs: json["BS"],
        br: json["BR"],
        ch: json["CH"],
        ct: json["CT"],
        cl: json["CL"],
        cs: json["CS"],
        cm: json["CM"],
        cr: json["CR"],
        dn: json["DN"],
        dr: json["DR"],
        db: json["DB"],
        ed: json["ED"],
        fl: json["FL"],
        fr: json["FR"],
        ge: json["GE"],
        gl: json["GL"],
        hn: json["HN"],
        il: json["IL"],
        lv: json["LV"],
        ns: json["NS"],
        oc: json["OC"],
        or: json["OR"],
        rz: json["RZ"],
        rs: json["RS"],
        sg: json["SG"],
        sr: json["SR"],
        st: json["ST"],
        sd: json["SD"],
        sv: json["SV"],
        tr: json["TR"],
        tl: json["TL"],
        un: json["UN"],
      );

  Map<String, dynamic> toJson() => {
        "C": c,
        "BL": bl,
        "AN": an,
        "BS": bs,
        "BR": br,
        "CH": ch,
        "CT": ct,
        "CL": cl,
        "CS": cs,
        "CM": cm,
        "CR": cr,
        "DN": dn,
        "DR": dr,
        "DB": db,
        "ED": ed,
        "FL": fl,
        "FR": fr,
        "GE": ge,
        "GL": gl,
        "HN": hn,
        "IL": il,
        "LV": lv,
        "NS": ns,
        "OC": oc,
        "OR": or,
        "RZ": rz,
        "RS": rs,
        "SG": sg,
        "SR": sr,
        "ST": st,
        "SD": sd,
        "SV": sv,
        "TR": tr,
        "TL": tl,
        "UN": un,
      };

  @override
  String toString() {
    return 'Md(c: $c, bl: $bl, an: $an, bs: $bs, br: $br, ch: $ch, ct: $ct, cl: $cl, cs: $cs, cm: $cm, cr: $cr, dn: $dn, dr: $dr, db: $db, ed: $ed, fl: $fl, fr: $fr, ge: $ge, gl: $gl, hn: $hn, il: $il, lv: $lv, ns: $ns, oc: $oc, or: $or, rz: $rz, rs: $rs, sg: $sg, sr: $sr, st: $st, sd: $sd, sv: $sv, tr: $tr, tl: $tl, un: $un)';
  }
}

class Mx {
  String df;
  String ja;
  String nl;
  String ag;
  String bc;
  String bs;
  String cm;
  String cs;
  String ch;
  String co;
  String cl;
  String dg;
  String gt;
  String gr;
  String hg;
  String mx;
  String mi;
  String mo;
  String na;
  String oa;
  String pu;
  String qt;
  String qr;
  String sl;
  String si;
  String so;
  String tb;
  String tm;
  String tl;
  String ve;
  String yu;
  String za;

  Mx({
    required this.df,
    required this.ja,
    required this.nl,
    required this.ag,
    required this.bc,
    required this.bs,
    required this.cm,
    required this.cs,
    required this.ch,
    required this.co,
    required this.cl,
    required this.dg,
    required this.gt,
    required this.gr,
    required this.hg,
    required this.mx,
    required this.mi,
    required this.mo,
    required this.na,
    required this.oa,
    required this.pu,
    required this.qt,
    required this.qr,
    required this.sl,
    required this.si,
    required this.so,
    required this.tb,
    required this.tm,
    required this.tl,
    required this.ve,
    required this.yu,
    required this.za,
  });

  factory Mx.fromJson(Map<String, dynamic> json) => Mx(
        df: json["DF"],
        ja: json["JA"],
        nl: json["NL"],
        ag: json["AG"],
        bc: json["BC"],
        bs: json["BS"],
        cm: json["CM"],
        cs: json["CS"],
        ch: json["CH"],
        co: json["CO"],
        cl: json["CL"],
        dg: json["DG"],
        gt: json["GT"],
        gr: json["GR"],
        hg: json["HG"],
        mx: json["MX"],
        mi: json["MI"],
        mo: json["MO"],
        na: json["NA"],
        oa: json["OA"],
        pu: json["PU"],
        qt: json["QT"],
        qr: json["QR"],
        sl: json["SL"],
        si: json["SI"],
        so: json["SO"],
        tb: json["TB"],
        tm: json["TM"],
        tl: json["TL"],
        ve: json["VE"],
        yu: json["YU"],
        za: json["ZA"],
      );

  Map<String, dynamic> toJson() => {
        "DF": df,
        "JA": ja,
        "NL": nl,
        "AG": ag,
        "BC": bc,
        "BS": bs,
        "CM": cm,
        "CS": cs,
        "CH": ch,
        "CO": co,
        "CL": cl,
        "DG": dg,
        "GT": gt,
        "GR": gr,
        "HG": hg,
        "MX": mx,
        "MI": mi,
        "MO": mo,
        "NA": na,
        "OA": oa,
        "PU": pu,
        "QT": qt,
        "QR": qr,
        "SL": sl,
        "SI": si,
        "SO": so,
        "TB": tb,
        "TM": tm,
        "TL": tl,
        "VE": ve,
        "YU": yu,
        "ZA": za,
      };

  @override
  String toString() {
    return 'Mx(df: $df, ja: $ja, nl: $nl, ag: $ag, bc: $bc, bs: $bs, cm: $cm, cs: $cs, ch: $ch, co: $co, cl: $cl, dg: $dg, gt: $gt, gr: $gr, hg: $hg, mx: $mx, mi: $mi, mo: $mo, na: $na, oa: $oa, pu: $pu, qt: $qt, qr: $qr, sl: $sl, si: $si, so: $so, tb: $tb, tm: $tm, tl: $tl, ve: $ve, yu: $yu, za: $za)';
  }
}

class My {
  String jhr;
  String kdh;
  String ktn;
  String lbn;
  String mlk;
  String nsn;
  String phg;
  String png;
  String prk;
  String pls;
  String sbh;
  String swk;
  String sgr;
  String trg;
  String pjy;
  String kul;

  My({
    required this.jhr,
    required this.kdh,
    required this.ktn,
    required this.lbn,
    required this.mlk,
    required this.nsn,
    required this.phg,
    required this.png,
    required this.prk,
    required this.pls,
    required this.sbh,
    required this.swk,
    required this.sgr,
    required this.trg,
    required this.pjy,
    required this.kul,
  });

  factory My.fromJson(Map<String, dynamic> json) => My(
        jhr: json["JHR"],
        kdh: json["KDH"],
        ktn: json["KTN"],
        lbn: json["LBN"],
        mlk: json["MLK"],
        nsn: json["NSN"],
        phg: json["PHG"],
        png: json["PNG"],
        prk: json["PRK"],
        pls: json["PLS"],
        sbh: json["SBH"],
        swk: json["SWK"],
        sgr: json["SGR"],
        trg: json["TRG"],
        pjy: json["PJY"],
        kul: json["KUL"],
      );

  Map<String, dynamic> toJson() => {
        "JHR": jhr,
        "KDH": kdh,
        "KTN": ktn,
        "LBN": lbn,
        "MLK": mlk,
        "NSN": nsn,
        "PHG": phg,
        "PNG": png,
        "PRK": prk,
        "PLS": pls,
        "SBH": sbh,
        "SWK": swk,
        "SGR": sgr,
        "TRG": trg,
        "PJY": pjy,
        "KUL": kul,
      };

  @override
  String toString() {
    return 'My(jhr: $jhr, kdh: $kdh, ktn: $ktn, lbn: $lbn, mlk: $mlk, nsn: $nsn, phg: $phg, png: $png, prk: $prk, pls: $pls, sbh: $sbh, swk: $swk, sgr: $sgr, trg: $trg, pjy: $pjy, kul: $kul)';
  }
}

class Mz {
  String mzp;
  String mzg;
  String mzi;
  String mzb;
  String mzl;
  String mzmpm;
  String mzn;
  String mza;
  String mzs;
  String mzt;
  String mzq;

  Mz({
    required this.mzp,
    required this.mzg,
    required this.mzi,
    required this.mzb,
    required this.mzl,
    required this.mzmpm,
    required this.mzn,
    required this.mza,
    required this.mzs,
    required this.mzt,
    required this.mzq,
  });

  factory Mz.fromJson(Map<String, dynamic> json) => Mz(
        mzp: json["MZP"],
        mzg: json["MZG"],
        mzi: json["MZI"],
        mzb: json["MZB"],
        mzl: json["MZL"],
        mzmpm: json["MZMPM"],
        mzn: json["MZN"],
        mza: json["MZA"],
        mzs: json["MZS"],
        mzt: json["MZT"],
        mzq: json["MZQ"],
      );

  Map<String, dynamic> toJson() => {
        "MZP": mzp,
        "MZG": mzg,
        "MZI": mzi,
        "MZB": mzb,
        "MZL": mzl,
        "MZMPM": mzmpm,
        "MZN": mzn,
        "MZA": mza,
        "MZS": mzs,
        "MZT": mzt,
        "MZQ": mzq,
      };

  @override
  String toString() {
    return 'Mz(mzp: $mzp, mzg: $mzg, mzi: $mzi, mzb: $mzb, mzl: $mzl, mzmpm: $mzmpm, mzn: $mzn, mza: $mza, mzs: $mzs, mzt: $mzt, mzq: $mzq)';
  }
}

class Na {
  String er;
  String ha;
  String ka;
  String ke;
  String kw;
  String kh;
  String ku;
  String ow;
  String oh;
  String os;
  String on;
  String ot;
  String od;
  String ca;

  Na({
    required this.er,
    required this.ha,
    required this.ka,
    required this.ke,
    required this.kw,
    required this.kh,
    required this.ku,
    required this.ow,
    required this.oh,
    required this.os,
    required this.on,
    required this.ot,
    required this.od,
    required this.ca,
  });

  factory Na.fromJson(Map<String, dynamic> json) => Na(
        er: json["ER"],
        ha: json["HA"],
        ka: json["KA"],
        ke: json["KE"],
        kw: json["KW"],
        kh: json["KH"],
        ku: json["KU"],
        ow: json["OW"],
        oh: json["OH"],
        os: json["OS"],
        on: json["ON"],
        ot: json["OT"],
        od: json["OD"],
        ca: json["CA"],
      );

  Map<String, dynamic> toJson() => {
        "ER": er,
        "HA": ha,
        "KA": ka,
        "KE": ke,
        "KW": kw,
        "KH": kh,
        "KU": ku,
        "OW": ow,
        "OH": oh,
        "OS": os,
        "ON": on,
        "OT": ot,
        "OD": od,
        "CA": ca,
      };

  @override
  String toString() {
    return 'Na(er: $er, ha: $ha, ka: $ka, ke: $ke, kw: $kw, kh: $kh, ku: $ku, ow: $ow, oh: $oh, os: $os, on: $on, ot: $ot, od: $od, ca: $ca)';
  }
}

class Ng {
  String ab;
  String fc;
  String ad;
  String ak;
  String an;
  String ba;
  String by;
  String be;
  String bo;
  String cr;
  String de;
  String eb;
  String ed;
  String ek;
  String en;
  String go;
  String im;
  String ji;
  String kd;
  String kn;
  String kt;
  String ke;
  String ko;
  String kw;
  String la;
  String na;
  String ni;
  String og;
  String on;
  String os;
  String oy;
  String pl;
  String ri;
  String so;
  String ta;
  String yo;
  String za;

  Ng({
    required this.ab,
    required this.fc,
    required this.ad,
    required this.ak,
    required this.an,
    required this.ba,
    required this.by,
    required this.be,
    required this.bo,
    required this.cr,
    required this.de,
    required this.eb,
    required this.ed,
    required this.ek,
    required this.en,
    required this.go,
    required this.im,
    required this.ji,
    required this.kd,
    required this.kn,
    required this.kt,
    required this.ke,
    required this.ko,
    required this.kw,
    required this.la,
    required this.na,
    required this.ni,
    required this.og,
    required this.on,
    required this.os,
    required this.oy,
    required this.pl,
    required this.ri,
    required this.so,
    required this.ta,
    required this.yo,
    required this.za,
  });

  factory Ng.fromJson(Map<String, dynamic> json) => Ng(
        ab: json["AB"],
        fc: json["FC"],
        ad: json["AD"],
        ak: json["AK"],
        an: json["AN"],
        ba: json["BA"],
        by: json["BY"],
        be: json["BE"],
        bo: json["BO"],
        cr: json["CR"],
        de: json["DE"],
        eb: json["EB"],
        ed: json["ED"],
        ek: json["EK"],
        en: json["EN"],
        go: json["GO"],
        im: json["IM"],
        ji: json["JI"],
        kd: json["KD"],
        kn: json["KN"],
        kt: json["KT"],
        ke: json["KE"],
        ko: json["KO"],
        kw: json["KW"],
        la: json["LA"],
        na: json["NA"],
        ni: json["NI"],
        og: json["OG"],
        on: json["ON"],
        os: json["OS"],
        oy: json["OY"],
        pl: json["PL"],
        ri: json["RI"],
        so: json["SO"],
        ta: json["TA"],
        yo: json["YO"],
        za: json["ZA"],
      );

  Map<String, dynamic> toJson() => {
        "AB": ab,
        "FC": fc,
        "AD": ad,
        "AK": ak,
        "AN": an,
        "BA": ba,
        "BY": by,
        "BE": be,
        "BO": bo,
        "CR": cr,
        "DE": de,
        "EB": eb,
        "ED": ed,
        "EK": ek,
        "EN": en,
        "GO": go,
        "IM": im,
        "JI": ji,
        "KD": kd,
        "KN": kn,
        "KT": kt,
        "KE": ke,
        "KO": ko,
        "KW": kw,
        "LA": la,
        "NA": na,
        "NI": ni,
        "OG": og,
        "ON": on,
        "OS": os,
        "OY": oy,
        "PL": pl,
        "RI": ri,
        "SO": so,
        "TA": ta,
        "YO": yo,
        "ZA": za,
      };

  @override
  String toString() {
    return 'Ng(ab: $ab, fc: $fc, ad: $ad, ak: $ak, an: $an, ba: $ba, by: $by, be: $be, bo: $bo, cr: $cr, de: $de, eb: $eb, ed: $ed, ek: $ek, en: $en, go: $go, im: $im, ji: $ji, kd: $kd, kn: $kn, kt: $kt, ke: $ke, ko: $ko, kw: $kw, la: $la, na: $na, ni: $ni, og: $og, on: $on, os: $os, oy: $oy, pl: $pl, ri: $ri, so: $so, ta: $ta, yo: $yo, za: $za)';
  }
}

class Ni {
  String niAn;
  String niAs;
  String niBo;
  String niCa;
  String niCi;
  String niCo;
  String niEs;
  String niGr;
  String niJi;
  String niLe;
  String niMd;
  String niMn;
  String niMs;
  String niMt;
  String niNs;
  String niRi;
  String niSj;

  Ni({
    required this.niAn,
    required this.niAs,
    required this.niBo,
    required this.niCa,
    required this.niCi,
    required this.niCo,
    required this.niEs,
    required this.niGr,
    required this.niJi,
    required this.niLe,
    required this.niMd,
    required this.niMn,
    required this.niMs,
    required this.niMt,
    required this.niNs,
    required this.niRi,
    required this.niSj,
  });

  factory Ni.fromJson(Map<String, dynamic> json) => Ni(
        niAn: json["NI-AN"],
        niAs: json["NI-AS"],
        niBo: json["NI-BO"],
        niCa: json["NI-CA"],
        niCi: json["NI-CI"],
        niCo: json["NI-CO"],
        niEs: json["NI-ES"],
        niGr: json["NI-GR"],
        niJi: json["NI-JI"],
        niLe: json["NI-LE"],
        niMd: json["NI-MD"],
        niMn: json["NI-MN"],
        niMs: json["NI-MS"],
        niMt: json["NI-MT"],
        niNs: json["NI-NS"],
        niRi: json["NI-RI"],
        niSj: json["NI-SJ"],
      );

  Map<String, dynamic> toJson() => {
        "NI-AN": niAn,
        "NI-AS": niAs,
        "NI-BO": niBo,
        "NI-CA": niCa,
        "NI-CI": niCi,
        "NI-CO": niCo,
        "NI-ES": niEs,
        "NI-GR": niGr,
        "NI-JI": niJi,
        "NI-LE": niLe,
        "NI-MD": niMd,
        "NI-MN": niMn,
        "NI-MS": niMs,
        "NI-MT": niMt,
        "NI-NS": niNs,
        "NI-RI": niRi,
        "NI-SJ": niSj,
      };

  @override
  String toString() {
    return 'Ni(niAn: $niAn, niAs: $niAs, niBo: $niBo, niCa: $niCa, niCi: $niCi, niCo: $niCo, niEs: $niEs, niGr: $niGr, niJi: $niJi, niLe: $niLe, niMd: $niMd, niMn: $niMn, niMs: $niMs, niMt: $niMt, niNs: $niNs, niRi: $niRi, niSj: $niSj)';
  }
}

class Np {
  String bag;
  String bhe;
  String dha;
  String gan;
  String jan;
  String kar;
  String kos;
  String lum;
  String mah;
  String mec;
  String nar;
  String rap;
  String sag;
  String npSet;

  Np({
    required this.bag,
    required this.bhe,
    required this.dha,
    required this.gan,
    required this.jan,
    required this.kar,
    required this.kos,
    required this.lum,
    required this.mah,
    required this.mec,
    required this.nar,
    required this.rap,
    required this.sag,
    required this.npSet,
  });

  factory Np.fromJson(Map<String, dynamic> json) => Np(
        bag: json["BAG"],
        bhe: json["BHE"],
        dha: json["DHA"],
        gan: json["GAN"],
        jan: json["JAN"],
        kar: json["KAR"],
        kos: json["KOS"],
        lum: json["LUM"],
        mah: json["MAH"],
        mec: json["MEC"],
        nar: json["NAR"],
        rap: json["RAP"],
        sag: json["SAG"],
        npSet: json["SET"],
      );

  Map<String, dynamic> toJson() => {
        "BAG": bag,
        "BHE": bhe,
        "DHA": dha,
        "GAN": gan,
        "JAN": jan,
        "KAR": kar,
        "KOS": kos,
        "LUM": lum,
        "MAH": mah,
        "MEC": mec,
        "NAR": nar,
        "RAP": rap,
        "SAG": sag,
        "SET": npSet,
      };

  @override
  String toString() {
    return 'Np(bag: $bag, bhe: $bhe, dha: $dha, gan: $gan, jan: $jan, kar: $kar, kos: $kos, lum: $lum, mah: $mah, mec: $mec, nar: $nar, rap: $rap, sag: $sag, npSet: $npSet)';
  }
}

class Nz {
  String ntl;
  String auk;
  String wko;
  String bop;
  String tki;
  String gis;
  String hkb;
  String mwt;
  String wgn;
  String nsn;
  String mbh;
  String tas;
  String wtc;
  String can;
  String ota;
  String stl;

  Nz({
    required this.ntl,
    required this.auk,
    required this.wko,
    required this.bop,
    required this.tki,
    required this.gis,
    required this.hkb,
    required this.mwt,
    required this.wgn,
    required this.nsn,
    required this.mbh,
    required this.tas,
    required this.wtc,
    required this.can,
    required this.ota,
    required this.stl,
  });

  factory Nz.fromJson(Map<String, dynamic> json) => Nz(
        ntl: json["NTL"],
        auk: json["AUK"],
        wko: json["WKO"],
        bop: json["BOP"],
        tki: json["TKI"],
        gis: json["GIS"],
        hkb: json["HKB"],
        mwt: json["MWT"],
        wgn: json["WGN"],
        nsn: json["NSN"],
        mbh: json["MBH"],
        tas: json["TAS"],
        wtc: json["WTC"],
        can: json["CAN"],
        ota: json["OTA"],
        stl: json["STL"],
      );

  Map<String, dynamic> toJson() => {
        "NTL": ntl,
        "AUK": auk,
        "WKO": wko,
        "BOP": bop,
        "TKI": tki,
        "GIS": gis,
        "HKB": hkb,
        "MWT": mwt,
        "WGN": wgn,
        "NSN": nsn,
        "MBH": mbh,
        "TAS": tas,
        "WTC": wtc,
        "CAN": can,
        "OTA": ota,
        "STL": stl,
      };

  @override
  String toString() {
    return 'Nz(ntl: $ntl, auk: $auk, wko: $wko, bop: $bop, tki: $tki, gis: $gis, hkb: $hkb, mwt: $mwt, wgn: $wgn, nsn: $nsn, mbh: $mbh, tas: $tas, wtc: $wtc, can: $can, ota: $ota, stl: $stl)';
  }
}

class Pa {
  String pa1;
  String pa2;
  String pa3;
  String pa4;
  String pa5;
  String pa6;
  String pa7;
  String pa8;
  String pa9;
  String pa10;
  String paEm;
  String paKy;
  String paNb;

  Pa({
    required this.pa1,
    required this.pa2,
    required this.pa3,
    required this.pa4,
    required this.pa5,
    required this.pa6,
    required this.pa7,
    required this.pa8,
    required this.pa9,
    required this.pa10,
    required this.paEm,
    required this.paKy,
    required this.paNb,
  });

  factory Pa.fromJson(Map<String, dynamic> json) => Pa(
        pa1: json["PA-1"],
        pa2: json["PA-2"],
        pa3: json["PA-3"],
        pa4: json["PA-4"],
        pa5: json["PA-5"],
        pa6: json["PA-6"],
        pa7: json["PA-7"],
        pa8: json["PA-8"],
        pa9: json["PA-9"],
        pa10: json["PA-10"],
        paEm: json["PA-EM"],
        paKy: json["PA-KY"],
        paNb: json["PA-NB"],
      );

  Map<String, dynamic> toJson() => {
        "PA-1": pa1,
        "PA-2": pa2,
        "PA-3": pa3,
        "PA-4": pa4,
        "PA-5": pa5,
        "PA-6": pa6,
        "PA-7": pa7,
        "PA-8": pa8,
        "PA-9": pa9,
        "PA-10": pa10,
        "PA-EM": paEm,
        "PA-KY": paKy,
        "PA-NB": paNb,
      };

  @override
  String toString() {
    return 'Pa(pa1: $pa1, pa2: $pa2, pa3: $pa3, pa4: $pa4, pa5: $pa5, pa6: $pa6, pa7: $pa7, pa8: $pa8, pa9: $pa9, pa10: $pa10, paEm: $paEm, paKy: $paKy, paNb: $paNb)';
  }
}

class Pe {
  String cal;
  String lma;
  String ama;
  String anc;
  String apu;
  String are;
  String aya;
  String caj;
  String cus;
  String huv;
  String huc;
  String ica;
  String jun;
  String lal;
  String lam;
  String lim;
  String lor;
  String mdd;
  String moq;
  String pas;
  String piu;
  String pun;
  String sam;
  String tac;
  String tum;
  String uca;

  Pe({
    required this.cal,
    required this.lma,
    required this.ama,
    required this.anc,
    required this.apu,
    required this.are,
    required this.aya,
    required this.caj,
    required this.cus,
    required this.huv,
    required this.huc,
    required this.ica,
    required this.jun,
    required this.lal,
    required this.lam,
    required this.lim,
    required this.lor,
    required this.mdd,
    required this.moq,
    required this.pas,
    required this.piu,
    required this.pun,
    required this.sam,
    required this.tac,
    required this.tum,
    required this.uca,
  });

  factory Pe.fromJson(Map<String, dynamic> json) => Pe(
        cal: json["CAL"],
        lma: json["LMA"],
        ama: json["AMA"],
        anc: json["ANC"],
        apu: json["APU"],
        are: json["ARE"],
        aya: json["AYA"],
        caj: json["CAJ"],
        cus: json["CUS"],
        huv: json["HUV"],
        huc: json["HUC"],
        ica: json["ICA"],
        jun: json["JUN"],
        lal: json["LAL"],
        lam: json["LAM"],
        lim: json["LIM"],
        lor: json["LOR"],
        mdd: json["MDD"],
        moq: json["MOQ"],
        pas: json["PAS"],
        piu: json["PIU"],
        pun: json["PUN"],
        sam: json["SAM"],
        tac: json["TAC"],
        tum: json["TUM"],
        uca: json["UCA"],
      );

  Map<String, dynamic> toJson() => {
        "CAL": cal,
        "LMA": lma,
        "AMA": ama,
        "ANC": anc,
        "APU": apu,
        "ARE": are,
        "AYA": aya,
        "CAJ": caj,
        "CUS": cus,
        "HUV": huv,
        "HUC": huc,
        "ICA": ica,
        "JUN": jun,
        "LAL": lal,
        "LAM": lam,
        "LIM": lim,
        "LOR": lor,
        "MDD": mdd,
        "MOQ": moq,
        "PAS": pas,
        "PIU": piu,
        "PUN": pun,
        "SAM": sam,
        "TAC": tac,
        "TUM": tum,
        "UCA": uca,
      };

  @override
  String toString() {
    return 'Pe(cal: $cal, lma: $lma, ama: $ama, anc: $anc, apu: $apu, are: $are, aya: $aya, caj: $caj, cus: $cus, huv: $huv, huc: $huc, ica: $ica, jun: $jun, lal: $lal, lam: $lam, lim: $lim, lor: $lor, mdd: $mdd, moq: $moq, pas: $pas, piu: $piu, pun: $pun, sam: $sam, tac: $tac, tum: $tum, uca: $uca)';
  }
}

class Pk {
  String jk;
  String ba;
  String ta;
  String gb;
  String pkIs;
  String kp;
  String pb;
  String sd;

  Pk({
    required this.jk,
    required this.ba,
    required this.ta,
    required this.gb,
    required this.pkIs,
    required this.kp,
    required this.pb,
    required this.sd,
  });

  factory Pk.fromJson(Map<String, dynamic> json) => Pk(
        jk: json["JK"],
        ba: json["BA"],
        ta: json["TA"],
        gb: json["GB"],
        pkIs: json["IS"],
        kp: json["KP"],
        pb: json["PB"],
        sd: json["SD"],
      );

  Map<String, dynamic> toJson() => {
        "JK": jk,
        "BA": ba,
        "TA": ta,
        "GB": gb,
        "IS": pkIs,
        "KP": kp,
        "PB": pb,
        "SD": sd,
      };

  @override
  String toString() {
    return 'Pk(jk: $jk, ba: $ba, ta: $ta, gb: $gb, pkIs: $pkIs, kp: $kp, pb: $pb, sd: $sd)';
  }
}

class Py {
  String pyAsu;
  String py1;
  String py2;
  String py3;
  String py4;
  String py5;
  String py6;
  String py7;
  String py8;
  String py9;
  String py10;
  String py11;
  String py12;
  String py13;
  String py14;
  String py15;
  String py16;
  String py17;

  Py({
    required this.pyAsu,
    required this.py1,
    required this.py2,
    required this.py3,
    required this.py4,
    required this.py5,
    required this.py6,
    required this.py7,
    required this.py8,
    required this.py9,
    required this.py10,
    required this.py11,
    required this.py12,
    required this.py13,
    required this.py14,
    required this.py15,
    required this.py16,
    required this.py17,
  });

  factory Py.fromJson(Map<String, dynamic> json) => Py(
        pyAsu: json["PY-ASU"],
        py1: json["PY-1"],
        py2: json["PY-2"],
        py3: json["PY-3"],
        py4: json["PY-4"],
        py5: json["PY-5"],
        py6: json["PY-6"],
        py7: json["PY-7"],
        py8: json["PY-8"],
        py9: json["PY-9"],
        py10: json["PY-10"],
        py11: json["PY-11"],
        py12: json["PY-12"],
        py13: json["PY-13"],
        py14: json["PY-14"],
        py15: json["PY-15"],
        py16: json["PY-16"],
        py17: json["PY-17"],
      );

  Map<String, dynamic> toJson() => {
        "PY-ASU": pyAsu,
        "PY-1": py1,
        "PY-2": py2,
        "PY-3": py3,
        "PY-4": py4,
        "PY-5": py5,
        "PY-6": py6,
        "PY-7": py7,
        "PY-8": py8,
        "PY-9": py9,
        "PY-10": py10,
        "PY-11": py11,
        "PY-12": py12,
        "PY-13": py13,
        "PY-14": py14,
        "PY-15": py15,
        "PY-16": py16,
        "PY-17": py17,
      };

  @override
  String toString() {
    return 'Py(pyAsu: $pyAsu, py1: $py1, py2: $py2, py3: $py3, py4: $py4, py5: $py5, py6: $py6, py7: $py7, py8: $py8, py9: $py9, py10: $py10, py11: $py11, py12: $py12, py13: $py13, py14: $py14, py15: $py15, py16: $py16, py17: $py17)';
  }
}

class Ro {
  String ab;
  String ar;
  String ag;
  String bc;
  String bh;
  String bn;
  String bt;
  String br;
  String bv;
  String b;
  String bz;
  String cl;
  String cs;
  String cj;
  String ct;
  String cv;
  String db;
  String dj;
  String gl;
  String gr;
  String gj;
  String hr;
  String hd;
  String il;
  String roIs;
  String roIf;
  String mm;
  String mh;
  String ms;
  String nt;
  String ot;
  String ph;
  String sj;
  String sm;
  String sb;
  String sv;
  String tr;
  String tm;
  String tl;
  String vl;
  String vs;
  String vn;

  Ro({
    required this.ab,
    required this.ar,
    required this.ag,
    required this.bc,
    required this.bh,
    required this.bn,
    required this.bt,
    required this.br,
    required this.bv,
    required this.b,
    required this.bz,
    required this.cl,
    required this.cs,
    required this.cj,
    required this.ct,
    required this.cv,
    required this.db,
    required this.dj,
    required this.gl,
    required this.gr,
    required this.gj,
    required this.hr,
    required this.hd,
    required this.il,
    required this.roIs,
    required this.roIf,
    required this.mm,
    required this.mh,
    required this.ms,
    required this.nt,
    required this.ot,
    required this.ph,
    required this.sj,
    required this.sm,
    required this.sb,
    required this.sv,
    required this.tr,
    required this.tm,
    required this.tl,
    required this.vl,
    required this.vs,
    required this.vn,
  });

  factory Ro.fromJson(Map<String, dynamic> json) => Ro(
        ab: json["AB"],
        ar: json["AR"],
        ag: json["AG"],
        bc: json["BC"],
        bh: json["BH"],
        bn: json["BN"],
        bt: json["BT"],
        br: json["BR"],
        bv: json["BV"],
        b: json["B"],
        bz: json["BZ"],
        cl: json["CL"],
        cs: json["CS"],
        cj: json["CJ"],
        ct: json["CT"],
        cv: json["CV"],
        db: json["DB"],
        dj: json["DJ"],
        gl: json["GL"],
        gr: json["GR"],
        gj: json["GJ"],
        hr: json["HR"],
        hd: json["HD"],
        il: json["IL"],
        roIs: json["IS"],
        roIf: json["IF"],
        mm: json["MM"],
        mh: json["MH"],
        ms: json["MS"],
        nt: json["NT"],
        ot: json["OT"],
        ph: json["PH"],
        sj: json["SJ"],
        sm: json["SM"],
        sb: json["SB"],
        sv: json["SV"],
        tr: json["TR"],
        tm: json["TM"],
        tl: json["TL"],
        vl: json["VL"],
        vs: json["VS"],
        vn: json["VN"],
      );

  Map<String, dynamic> toJson() => {
        "AB": ab,
        "AR": ar,
        "AG": ag,
        "BC": bc,
        "BH": bh,
        "BN": bn,
        "BT": bt,
        "BR": br,
        "BV": bv,
        "B": b,
        "BZ": bz,
        "CL": cl,
        "CS": cs,
        "CJ": cj,
        "CT": ct,
        "CV": cv,
        "DB": db,
        "DJ": dj,
        "GL": gl,
        "GR": gr,
        "GJ": gj,
        "HR": hr,
        "HD": hd,
        "IL": il,
        "IS": roIs,
        "IF": roIf,
        "MM": mm,
        "MH": mh,
        "MS": ms,
        "NT": nt,
        "OT": ot,
        "PH": ph,
        "SJ": sj,
        "SM": sm,
        "SB": sb,
        "SV": sv,
        "TR": tr,
        "TM": tm,
        "TL": tl,
        "VL": vl,
        "VS": vs,
        "VN": vn,
      };

  @override
  String toString() {
    return 'Ro(ab: $ab, ar: $ar, ag: $ag, bc: $bc, bh: $bh, bn: $bn, bt: $bt, br: $br, bv: $bv, b: $b, bz: $bz, cl: $cl, cs: $cs, cj: $cj, ct: $ct, cv: $cv, db: $db, dj: $dj, gl: $gl, gr: $gr, gj: $gj, hr: $hr, hd: $hd, il: $il, roIs: $roIs, roIf: $roIf, mm: $mm, mh: $mh, ms: $ms, nt: $nt, ot: $ot, ph: $ph, sj: $sj, sm: $sm, sb: $sb, sv: $sv, tr: $tr, tm: $tm, tl: $tl, vl: $vl, vs: $vs, vn: $vn)';
  }
}

class Rs {
  String rs00;
  String rs14;
  String rs11;
  String rs02;
  String rs10;
  String rs23;
  String rs09;
  String rs08;
  String rs17;
  String rs20;
  String rs01;
  String rs03;
  String rs24;
  String rs22;
  String rs13;
  String rs19;
  String rs18;
  String rs06;
  String rs04;
  String rs07;
  String rs12;
  String rs21;
  String rs05;
  String rs15;
  String rs16;
  String rs25;
  String rs26;
  String rs27;
  String rs28;
  String rs29;
  String rskm;
  String rsvo;

  Rs({
    required this.rs00,
    required this.rs14,
    required this.rs11,
    required this.rs02,
    required this.rs10,
    required this.rs23,
    required this.rs09,
    required this.rs08,
    required this.rs17,
    required this.rs20,
    required this.rs01,
    required this.rs03,
    required this.rs24,
    required this.rs22,
    required this.rs13,
    required this.rs19,
    required this.rs18,
    required this.rs06,
    required this.rs04,
    required this.rs07,
    required this.rs12,
    required this.rs21,
    required this.rs05,
    required this.rs15,
    required this.rs16,
    required this.rs25,
    required this.rs26,
    required this.rs27,
    required this.rs28,
    required this.rs29,
    required this.rskm,
    required this.rsvo,
  });

  factory Rs.fromJson(Map<String, dynamic> json) => Rs(
        rs00: json["RS00"],
        rs14: json["RS14"],
        rs11: json["RS11"],
        rs02: json["RS02"],
        rs10: json["RS10"],
        rs23: json["RS23"],
        rs09: json["RS09"],
        rs08: json["RS08"],
        rs17: json["RS17"],
        rs20: json["RS20"],
        rs01: json["RS01"],
        rs03: json["RS03"],
        rs24: json["RS24"],
        rs22: json["RS22"],
        rs13: json["RS13"],
        rs19: json["RS19"],
        rs18: json["RS18"],
        rs06: json["RS06"],
        rs04: json["RS04"],
        rs07: json["RS07"],
        rs12: json["RS12"],
        rs21: json["RS21"],
        rs05: json["RS05"],
        rs15: json["RS15"],
        rs16: json["RS16"],
        rs25: json["RS25"],
        rs26: json["RS26"],
        rs27: json["RS27"],
        rs28: json["RS28"],
        rs29: json["RS29"],
        rskm: json["RSKM"],
        rsvo: json["RSVO"],
      );

  Map<String, dynamic> toJson() => {
        "RS00": rs00,
        "RS14": rs14,
        "RS11": rs11,
        "RS02": rs02,
        "RS10": rs10,
        "RS23": rs23,
        "RS09": rs09,
        "RS08": rs08,
        "RS17": rs17,
        "RS20": rs20,
        "RS01": rs01,
        "RS03": rs03,
        "RS24": rs24,
        "RS22": rs22,
        "RS13": rs13,
        "RS19": rs19,
        "RS18": rs18,
        "RS06": rs06,
        "RS04": rs04,
        "RS07": rs07,
        "RS12": rs12,
        "RS21": rs21,
        "RS05": rs05,
        "RS15": rs15,
        "RS16": rs16,
        "RS25": rs25,
        "RS26": rs26,
        "RS27": rs27,
        "RS28": rs28,
        "RS29": rs29,
        "RSKM": rskm,
        "RSVO": rsvo,
      };

  @override
  String toString() {
    return 'Rs(rs00: $rs00, rs14: $rs14, rs11: $rs11, rs02: $rs02, rs10: $rs10, rs23: $rs23, rs09: $rs09, rs08: $rs08, rs17: $rs17, rs20: $rs20, rs01: $rs01, rs03: $rs03, rs24: $rs24, rs22: $rs22, rs13: $rs13, rs19: $rs19, rs18: $rs18, rs06: $rs06, rs04: $rs04, rs07: $rs07, rs12: $rs12, rs21: $rs21, rs05: $rs05, rs15: $rs15, rs16: $rs16, rs25: $rs25, rs26: $rs26, rs27: $rs27, rs28: $rs28, rs29: $rs29, rskm: $rskm, rsvo: $rsvo)';
  }
}

class Sn {
  String sndb;
  String sndk;
  String snfk;
  String snka;
  String snkd;
  String snke;
  String snkl;
  String snlg;
  String snmt;
  String snse;
  String snsl;
  String sntc;
  String snth;
  String snzg;

  Sn({
    required this.sndb,
    required this.sndk,
    required this.snfk,
    required this.snka,
    required this.snkd,
    required this.snke,
    required this.snkl,
    required this.snlg,
    required this.snmt,
    required this.snse,
    required this.snsl,
    required this.sntc,
    required this.snth,
    required this.snzg,
  });

  factory Sn.fromJson(Map<String, dynamic> json) => Sn(
        sndb: json["SNDB"],
        sndk: json["SNDK"],
        snfk: json["SNFK"],
        snka: json["SNKA"],
        snkd: json["SNKD"],
        snke: json["SNKE"],
        snkl: json["SNKL"],
        snlg: json["SNLG"],
        snmt: json["SNMT"],
        snse: json["SNSE"],
        snsl: json["SNSL"],
        sntc: json["SNTC"],
        snth: json["SNTH"],
        snzg: json["SNZG"],
      );

  Map<String, dynamic> toJson() => {
        "SNDB": sndb,
        "SNDK": sndk,
        "SNFK": snfk,
        "SNKA": snka,
        "SNKD": snkd,
        "SNKE": snke,
        "SNKL": snkl,
        "SNLG": snlg,
        "SNMT": snmt,
        "SNSE": snse,
        "SNSL": snsl,
        "SNTC": sntc,
        "SNTH": snth,
        "SNZG": snzg,
      };

  @override
  String toString() {
    return 'Sn(sndb: $sndb, sndk: $sndk, snfk: $snfk, snka: $snka, snkd: $snkd, snke: $snke, snkl: $snkl, snlg: $snlg, snmt: $snmt, snse: $snse, snsl: $snsl, sntc: $sntc, snth: $snth, snzg: $snzg)';
  }
}

class Sv {
  String svAh;
  String svCa;
  String svCh;
  String svCu;
  String svLi;
  String svMo;
  String svPa;
  String svSa;
  String svSm;
  String svSo;
  String svSs;
  String svSv;
  String svUn;
  String svUs;

  Sv({
    required this.svAh,
    required this.svCa,
    required this.svCh,
    required this.svCu,
    required this.svLi,
    required this.svMo,
    required this.svPa,
    required this.svSa,
    required this.svSm,
    required this.svSo,
    required this.svSs,
    required this.svSv,
    required this.svUn,
    required this.svUs,
  });

  factory Sv.fromJson(Map<String, dynamic> json) => Sv(
        svAh: json["SV-AH"],
        svCa: json["SV-CA"],
        svCh: json["SV-CH"],
        svCu: json["SV-CU"],
        svLi: json["SV-LI"],
        svMo: json["SV-MO"],
        svPa: json["SV-PA"],
        svSa: json["SV-SA"],
        svSm: json["SV-SM"],
        svSo: json["SV-SO"],
        svSs: json["SV-SS"],
        svSv: json["SV-SV"],
        svUn: json["SV-UN"],
        svUs: json["SV-US"],
      );

  Map<String, dynamic> toJson() => {
        "SV-AH": svAh,
        "SV-CA": svCa,
        "SV-CH": svCh,
        "SV-CU": svCu,
        "SV-LI": svLi,
        "SV-MO": svMo,
        "SV-PA": svPa,
        "SV-SA": svSa,
        "SV-SM": svSm,
        "SV-SO": svSo,
        "SV-SS": svSs,
        "SV-SV": svSv,
        "SV-UN": svUn,
        "SV-US": svUs,
      };

  @override
  String toString() {
    return 'Sv(svAh: $svAh, svCa: $svCa, svCh: $svCh, svCu: $svCu, svLi: $svLi, svMo: $svMo, svPa: $svPa, svSa: $svSa, svSm: $svSm, svSo: $svSo, svSs: $svSs, svSv: $svSv, svUn: $svUn, svUs: $svUs)';
  }
}

class Tz {
  String tz01;
  String tz02;
  String tz03;
  String tz04;
  String tz05;
  String tz06;
  String tz07;
  String tz08;
  String tz09;
  String tz10;
  String tz11;
  String tz12;
  String tz13;
  String tz14;
  String tz15;
  String tz16;
  String tz17;
  String tz18;
  String tz19;
  String tz20;
  String tz21;
  String tz22;
  String tz23;
  String tz24;
  String tz25;
  String tz26;
  String tz27;
  String tz28;
  String tz29;
  String tz30;

  Tz({
    required this.tz01,
    required this.tz02,
    required this.tz03,
    required this.tz04,
    required this.tz05,
    required this.tz06,
    required this.tz07,
    required this.tz08,
    required this.tz09,
    required this.tz10,
    required this.tz11,
    required this.tz12,
    required this.tz13,
    required this.tz14,
    required this.tz15,
    required this.tz16,
    required this.tz17,
    required this.tz18,
    required this.tz19,
    required this.tz20,
    required this.tz21,
    required this.tz22,
    required this.tz23,
    required this.tz24,
    required this.tz25,
    required this.tz26,
    required this.tz27,
    required this.tz28,
    required this.tz29,
    required this.tz30,
  });

  factory Tz.fromJson(Map<String, dynamic> json) => Tz(
        tz01: json["TZ01"],
        tz02: json["TZ02"],
        tz03: json["TZ03"],
        tz04: json["TZ04"],
        tz05: json["TZ05"],
        tz06: json["TZ06"],
        tz07: json["TZ07"],
        tz08: json["TZ08"],
        tz09: json["TZ09"],
        tz10: json["TZ10"],
        tz11: json["TZ11"],
        tz12: json["TZ12"],
        tz13: json["TZ13"],
        tz14: json["TZ14"],
        tz15: json["TZ15"],
        tz16: json["TZ16"],
        tz17: json["TZ17"],
        tz18: json["TZ18"],
        tz19: json["TZ19"],
        tz20: json["TZ20"],
        tz21: json["TZ21"],
        tz22: json["TZ22"],
        tz23: json["TZ23"],
        tz24: json["TZ24"],
        tz25: json["TZ25"],
        tz26: json["TZ26"],
        tz27: json["TZ27"],
        tz28: json["TZ28"],
        tz29: json["TZ29"],
        tz30: json["TZ30"],
      );

  Map<String, dynamic> toJson() => {
        "TZ01": tz01,
        "TZ02": tz02,
        "TZ03": tz03,
        "TZ04": tz04,
        "TZ05": tz05,
        "TZ06": tz06,
        "TZ07": tz07,
        "TZ08": tz08,
        "TZ09": tz09,
        "TZ10": tz10,
        "TZ11": tz11,
        "TZ12": tz12,
        "TZ13": tz13,
        "TZ14": tz14,
        "TZ15": tz15,
        "TZ16": tz16,
        "TZ17": tz17,
        "TZ18": tz18,
        "TZ19": tz19,
        "TZ20": tz20,
        "TZ21": tz21,
        "TZ22": tz22,
        "TZ23": tz23,
        "TZ24": tz24,
        "TZ25": tz25,
        "TZ26": tz26,
        "TZ27": tz27,
        "TZ28": tz28,
        "TZ29": tz29,
        "TZ30": tz30,
      };

  @override
  String toString() {
    return 'Tz(tz01: $tz01, tz02: $tz02, tz03: $tz03, tz04: $tz04, tz05: $tz05, tz06: $tz06, tz07: $tz07, tz08: $tz08, tz09: $tz09, tz10: $tz10, tz11: $tz11, tz12: $tz12, tz13: $tz13, tz14: $tz14, tz15: $tz15, tz16: $tz16, tz17: $tz17, tz18: $tz18, tz19: $tz19, tz20: $tz20, tz21: $tz21, tz22: $tz22, tz23: $tz23, tz24: $tz24, tz25: $tz25, tz26: $tz26, tz27: $tz27, tz28: $tz28, tz29: $tz29, tz30: $tz30)';
  }
}

class Ua {
  String ua05;
  String ua07;
  String ua09;
  String ua12;
  String ua14;
  String ua18;
  String ua21;
  String ua23;
  String ua26;
  String ua30;
  String ua32;
  String ua35;
  String ua40;
  String ua43;
  String ua46;
  String ua48;
  String ua51;
  String ua53;
  String ua56;
  String ua59;
  String ua61;
  String ua63;
  String ua65;
  String ua68;
  String ua71;
  String ua74;
  String ua77;

  Ua({
    required this.ua05,
    required this.ua07,
    required this.ua09,
    required this.ua12,
    required this.ua14,
    required this.ua18,
    required this.ua21,
    required this.ua23,
    required this.ua26,
    required this.ua30,
    required this.ua32,
    required this.ua35,
    required this.ua40,
    required this.ua43,
    required this.ua46,
    required this.ua48,
    required this.ua51,
    required this.ua53,
    required this.ua56,
    required this.ua59,
    required this.ua61,
    required this.ua63,
    required this.ua65,
    required this.ua68,
    required this.ua71,
    required this.ua74,
    required this.ua77,
  });

  factory Ua.fromJson(Map<String, dynamic> json) => Ua(
        ua05: json["UA05"],
        ua07: json["UA07"],
        ua09: json["UA09"],
        ua12: json["UA12"],
        ua14: json["UA14"],
        ua18: json["UA18"],
        ua21: json["UA21"],
        ua23: json["UA23"],
        ua26: json["UA26"],
        ua30: json["UA30"],
        ua32: json["UA32"],
        ua35: json["UA35"],
        ua40: json["UA40"],
        ua43: json["UA43"],
        ua46: json["UA46"],
        ua48: json["UA48"],
        ua51: json["UA51"],
        ua53: json["UA53"],
        ua56: json["UA56"],
        ua59: json["UA59"],
        ua61: json["UA61"],
        ua63: json["UA63"],
        ua65: json["UA65"],
        ua68: json["UA68"],
        ua71: json["UA71"],
        ua74: json["UA74"],
        ua77: json["UA77"],
      );

  Map<String, dynamic> toJson() => {
        "UA05": ua05,
        "UA07": ua07,
        "UA09": ua09,
        "UA12": ua12,
        "UA14": ua14,
        "UA18": ua18,
        "UA21": ua21,
        "UA23": ua23,
        "UA26": ua26,
        "UA30": ua30,
        "UA32": ua32,
        "UA35": ua35,
        "UA40": ua40,
        "UA43": ua43,
        "UA46": ua46,
        "UA48": ua48,
        "UA51": ua51,
        "UA53": ua53,
        "UA56": ua56,
        "UA59": ua59,
        "UA61": ua61,
        "UA63": ua63,
        "UA65": ua65,
        "UA68": ua68,
        "UA71": ua71,
        "UA74": ua74,
        "UA77": ua77,
      };

  @override
  String toString() {
    return 'Ua(ua05: $ua05, ua07: $ua07, ua09: $ua09, ua12: $ua12, ua14: $ua14, ua18: $ua18, ua21: $ua21, ua23: $ua23, ua26: $ua26, ua30: $ua30, ua32: $ua32, ua35: $ua35, ua40: $ua40, ua43: $ua43, ua46: $ua46, ua48: $ua48, ua51: $ua51, ua53: $ua53, ua56: $ua56, ua59: $ua59, ua61: $ua61, ua63: $ua63, ua65: $ua65, ua68: $ua68, ua71: $ua71, ua74: $ua74, ua77: $ua77)';
  }
}

class Uy {
  String uyAr;
  String uyCa;
  String uyCl;
  String uyCo;
  String uyDu;
  String uyFs;
  String uyFd;
  String uyLa;
  String uyMa;
  String uyMo;
  String uyPa;
  String uyRn;
  String uyRv;
  String uyRo;
  String uySa;
  String uySj;
  String uySo;
  String uyTa;
  String uyTt;

  Uy({
    required this.uyAr,
    required this.uyCa,
    required this.uyCl,
    required this.uyCo,
    required this.uyDu,
    required this.uyFs,
    required this.uyFd,
    required this.uyLa,
    required this.uyMa,
    required this.uyMo,
    required this.uyPa,
    required this.uyRn,
    required this.uyRv,
    required this.uyRo,
    required this.uySa,
    required this.uySj,
    required this.uySo,
    required this.uyTa,
    required this.uyTt,
  });

  factory Uy.fromJson(Map<String, dynamic> json) => Uy(
        uyAr: json["UY-AR"],
        uyCa: json["UY-CA"],
        uyCl: json["UY-CL"],
        uyCo: json["UY-CO"],
        uyDu: json["UY-DU"],
        uyFs: json["UY-FS"],
        uyFd: json["UY-FD"],
        uyLa: json["UY-LA"],
        uyMa: json["UY-MA"],
        uyMo: json["UY-MO"],
        uyPa: json["UY-PA"],
        uyRn: json["UY-RN"],
        uyRv: json["UY-RV"],
        uyRo: json["UY-RO"],
        uySa: json["UY-SA"],
        uySj: json["UY-SJ"],
        uySo: json["UY-SO"],
        uyTa: json["UY-TA"],
        uyTt: json["UY-TT"],
      );

  Map<String, dynamic> toJson() => {
        "UY-AR": uyAr,
        "UY-CA": uyCa,
        "UY-CL": uyCl,
        "UY-CO": uyCo,
        "UY-DU": uyDu,
        "UY-FS": uyFs,
        "UY-FD": uyFd,
        "UY-LA": uyLa,
        "UY-MA": uyMa,
        "UY-MO": uyMo,
        "UY-PA": uyPa,
        "UY-RN": uyRn,
        "UY-RV": uyRv,
        "UY-RO": uyRo,
        "UY-SA": uySa,
        "UY-SJ": uySj,
        "UY-SO": uySo,
        "UY-TA": uyTa,
        "UY-TT": uyTt,
      };

  @override
  String toString() {
    return 'Uy(uyAr: $uyAr, uyCa: $uyCa, uyCl: $uyCl, uyCo: $uyCo, uyDu: $uyDu, uyFs: $uyFs, uyFd: $uyFd, uyLa: $uyLa, uyMa: $uyMa, uyMo: $uyMo, uyPa: $uyPa, uyRn: $uyRn, uyRv: $uyRv, uyRo: $uyRo, uySa: $uySa, uySj: $uySj, uySo: $uySo, uyTa: $uyTa, uyTt: $uyTt)';
  }
}

class Ve {
  String veA;
  String veB;
  String veC;
  String veD;
  String veE;
  String veF;
  String veG;
  String veH;
  String veI;
  String veJ;
  String veK;
  String veL;
  String veM;
  String veN;
  String veO;
  String veP;
  String veR;
  String veS;
  String veT;
  String veU;
  String veV;
  String veW;
  String veX;
  String veY;
  String veZ;

  Ve({
    required this.veA,
    required this.veB,
    required this.veC,
    required this.veD,
    required this.veE,
    required this.veF,
    required this.veG,
    required this.veH,
    required this.veI,
    required this.veJ,
    required this.veK,
    required this.veL,
    required this.veM,
    required this.veN,
    required this.veO,
    required this.veP,
    required this.veR,
    required this.veS,
    required this.veT,
    required this.veU,
    required this.veV,
    required this.veW,
    required this.veX,
    required this.veY,
    required this.veZ,
  });

  factory Ve.fromJson(Map<String, dynamic> json) => Ve(
        veA: json["VE-A"],
        veB: json["VE-B"],
        veC: json["VE-C"],
        veD: json["VE-D"],
        veE: json["VE-E"],
        veF: json["VE-F"],
        veG: json["VE-G"],
        veH: json["VE-H"],
        veI: json["VE-I"],
        veJ: json["VE-J"],
        veK: json["VE-K"],
        veL: json["VE-L"],
        veM: json["VE-M"],
        veN: json["VE-N"],
        veO: json["VE-O"],
        veP: json["VE-P"],
        veR: json["VE-R"],
        veS: json["VE-S"],
        veT: json["VE-T"],
        veU: json["VE-U"],
        veV: json["VE-V"],
        veW: json["VE-W"],
        veX: json["VE-X"],
        veY: json["VE-Y"],
        veZ: json["VE-Z"],
      );

  Map<String, dynamic> toJson() => {
        "VE-A": veA,
        "VE-B": veB,
        "VE-C": veC,
        "VE-D": veD,
        "VE-E": veE,
        "VE-F": veF,
        "VE-G": veG,
        "VE-H": veH,
        "VE-I": veI,
        "VE-J": veJ,
        "VE-K": veK,
        "VE-L": veL,
        "VE-M": veM,
        "VE-N": veN,
        "VE-O": veO,
        "VE-P": veP,
        "VE-R": veR,
        "VE-S": veS,
        "VE-T": veT,
        "VE-U": veU,
        "VE-V": veV,
        "VE-W": veW,
        "VE-X": veX,
        "VE-Y": veY,
        "VE-Z": veZ,
      };

  @override
  String toString() {
    return 'Ve(veA: $veA, veB: $veB, veC: $veC, veD: $veD, veE: $veE, veF: $veF, veG: $veG, veH: $veH, veI: $veI, veJ: $veJ, veK: $veK, veL: $veL, veM: $veM, veN: $veN, veO: $veO, veP: $veP, veR: $veR, veS: $veS, veT: $veT, veU: $veU, veV: $veV, veW: $veW, veX: $veX, veY: $veY, veZ: $veZ)';
  }
}

class Za {
  String ec;
  String fs;
  String gp;
  String kzn;
  String lp;
  String mp;
  String nc;
  String nw;
  String wc;

  Za({
    required this.ec,
    required this.fs,
    required this.gp,
    required this.kzn,
    required this.lp,
    required this.mp,
    required this.nc,
    required this.nw,
    required this.wc,
  });

  factory Za.fromJson(Map<String, dynamic> json) => Za(
        ec: json["EC"],
        fs: json["FS"],
        gp: json["GP"],
        kzn: json["KZN"],
        lp: json["LP"],
        mp: json["MP"],
        nc: json["NC"],
        nw: json["NW"],
        wc: json["WC"],
      );

  Map<String, dynamic> toJson() => {
        "EC": ec,
        "FS": fs,
        "GP": gp,
        "KZN": kzn,
        "LP": lp,
        "MP": mp,
        "NC": nc,
        "NW": nw,
        "WC": wc,
      };

  @override
  String toString() {
    return 'Za(ec: $ec, fs: $fs, gp: $gp, kzn: $kzn, lp: $lp, mp: $mp, nc: $nc, nw: $nw, wc: $wc)';
  }
}

class Zm {
  String zm01;
  String zm02;
  String zm03;
  String zm04;
  String zm05;
  String zm06;
  String zm07;
  String zm08;
  String zm09;
  String zm10;

  Zm({
    required this.zm01,
    required this.zm02,
    required this.zm03,
    required this.zm04,
    required this.zm05,
    required this.zm06,
    required this.zm07,
    required this.zm08,
    required this.zm09,
    required this.zm10,
  });

  factory Zm.fromJson(Map<String, dynamic> json) => Zm(
        zm01: json["ZM-01"],
        zm02: json["ZM-02"],
        zm03: json["ZM-03"],
        zm04: json["ZM-04"],
        zm05: json["ZM-05"],
        zm06: json["ZM-06"],
        zm07: json["ZM-07"],
        zm08: json["ZM-08"],
        zm09: json["ZM-09"],
        zm10: json["ZM-10"],
      );

  Map<String, dynamic> toJson() => {
        "ZM-01": zm01,
        "ZM-02": zm02,
        "ZM-03": zm03,
        "ZM-04": zm04,
        "ZM-05": zm05,
        "ZM-06": zm06,
        "ZM-07": zm07,
        "ZM-08": zm08,
        "ZM-09": zm09,
        "ZM-10": zm10,
      };

  @override
  String toString() {
    return 'Zm(zm01: $zm01, zm02: $zm02, zm03: $zm03, zm04: $zm04, zm05: $zm05, zm06: $zm06, zm07: $zm07, zm08: $zm08, zm09: $zm09, zm10: $zm10)';
  }
}
