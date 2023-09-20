(declare-fun a_ack!2028 () (_ BitVec 32))
(declare-fun c_ack!2027 () (_ BitVec 64))
(declare-fun b_ack!2026 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!2028 #x00000000)))
(assert (not (= #x00000000 a_ack!2028)))
(assert (not (= #x00000001 a_ack!2028)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2027) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2027) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!2028 #x00000005)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!2027) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2028)
       ((_ to_fp 11 53) #x416312d000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!2027) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2026) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2026) ((_ to_fp 11 53) #xc000000000000000))))
(assert (bvslt #x00000002 a_ack!2028))
(assert (bvslt #x00000003 a_ack!2028))
(assert (bvslt #x00000004 a_ack!2028))
(assert (bvslt #x00000005 a_ack!2028))
(assert (bvslt #x00000006 a_ack!2028))
(assert (bvslt #x00000007 a_ack!2028))
(assert (bvslt #x00000008 a_ack!2028))
(assert (bvslt #x00000009 a_ack!2028))
(assert (bvslt #x0000000a a_ack!2028))
(assert (bvslt #x0000000b a_ack!2028))
(assert (bvslt #x0000000c a_ack!2028))
(assert (bvslt #x0000000d a_ack!2028))
(assert (bvslt #x0000000e a_ack!2028))
(assert (bvslt #x0000000f a_ack!2028))
(assert (bvslt #x00000010 a_ack!2028))
(assert (bvslt #x00000011 a_ack!2028))
(assert (bvslt #x00000012 a_ack!2028))
(assert (bvslt #x00000013 a_ack!2028))
(assert (bvslt #x00000014 a_ack!2028))
(assert (bvslt #x00000015 a_ack!2028))
(assert (bvslt #x00000016 a_ack!2028))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) b_ack!2026))))
      (a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) b_ack!2026))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) c_ack!2027)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!2026)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!2026))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!2026)))
                   ((_ to_fp 11 53) c_ack!2027)))
      (a!9 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   ((_ to_fp 11 53) b_ack!2026))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) c_ack!2027)))
      (a!11 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    ((_ to_fp 11 53) b_ack!2026))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!2027)))
      (a!15 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4028000000000000)
                                    ((_ to_fp 11 53) b_ack!2026))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!2027)))
      (a!17 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!2026))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!2027)))
      (a!21 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4030000000000000)
                                    ((_ to_fp 11 53) b_ack!2026))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!2027)))
      (a!23 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x402c000000000000)
                                    ((_ to_fp 11 53) b_ack!2026))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!2027)))
      (a!27 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4034000000000000)
                                    ((_ to_fp 11 53) b_ack!2026))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!2027)))
      (a!29 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4032000000000000)
                                    ((_ to_fp 11 53) b_ack!2026))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!2027)))
      (a!33 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4038000000000000)
                                    ((_ to_fp 11 53) b_ack!2026))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!2027)))
      (a!35 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4036000000000000)
                                    ((_ to_fp 11 53) b_ack!2026))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!2027)))
      (a!39 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x403c000000000000)
                                    ((_ to_fp 11 53) b_ack!2026))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!2027)))
      (a!41 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x403a000000000000)
                                    ((_ to_fp 11 53) b_ack!2026))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!2027)))
      (a!45 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4040000000000000)
                                    ((_ to_fp 11 53) b_ack!2026))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!2027)))
      (a!47 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x403e000000000000)
                                    ((_ to_fp 11 53) b_ack!2026))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!2027)))
      (a!51 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4042000000000000)
                                    ((_ to_fp 11 53) b_ack!2026))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!2027)))
      (a!53 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4041000000000000)
                                    ((_ to_fp 11 53) b_ack!2026))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!2027)))
      (a!57 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4044000000000000)
                                    ((_ to_fp 11 53) b_ack!2026))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!2027)))
      (a!59 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4043000000000000)
                                    ((_ to_fp 11 53) b_ack!2026))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!2027)))
      (a!63 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4046000000000000)
                                    ((_ to_fp 11 53) b_ack!2026))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!2027)))
      (a!65 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4045000000000000)
                                    ((_ to_fp 11 53) b_ack!2026))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!2027))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!2026))
                           ((_ to_fp 11 53) c_ack!2027))))
      (a!6 (fp.add roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) c_ack!2027))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!5)))))
(let ((a!7 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven a!3 a!6))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!2026)))
                    a!6)))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) b_ack!2026)))
                   a!7))
      (a!12 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!10
                            (fp.mul roundNearestTiesToEven a!11 a!7))
                    ((_ to_fp 11 53) #x4010000000000000))))
(let ((a!13 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven a!9 a!12))
                    ((_ to_fp 11 53) #x4014000000000000)))
      (a!16 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4014000000000000)
                                    ((_ to_fp 11 53) b_ack!2026)))
                    a!12)))
(let ((a!14 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    ((_ to_fp 11 53) b_ack!2026)))
                    a!13))
      (a!18 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!16
                            (fp.mul roundNearestTiesToEven a!17 a!13))
                    ((_ to_fp 11 53) #x4018000000000000))))
(let ((a!19 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!14
                            (fp.mul roundNearestTiesToEven a!15 a!18))
                    ((_ to_fp 11 53) #x401c000000000000)))
      (a!22 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x401c000000000000)
                                    ((_ to_fp 11 53) b_ack!2026)))
                    a!18)))
(let ((a!20 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4020000000000000)
                                    ((_ to_fp 11 53) b_ack!2026)))
                    a!19))
      (a!24 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!22
                            (fp.mul roundNearestTiesToEven a!23 a!19))
                    ((_ to_fp 11 53) #x4020000000000000))))
(let ((a!25 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!20
                            (fp.mul roundNearestTiesToEven a!21 a!24))
                    ((_ to_fp 11 53) #x4022000000000000)))
      (a!28 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4022000000000000)
                                    ((_ to_fp 11 53) b_ack!2026)))
                    a!24)))
(let ((a!26 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!2026)))
                    a!25))
      (a!30 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!28
                            (fp.mul roundNearestTiesToEven a!29 a!25))
                    ((_ to_fp 11 53) #x4024000000000000))))
(let ((a!31 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!26
                            (fp.mul roundNearestTiesToEven a!27 a!30))
                    ((_ to_fp 11 53) #x4026000000000000)))
      (a!34 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4026000000000000)
                                    ((_ to_fp 11 53) b_ack!2026)))
                    a!30)))
(let ((a!32 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4028000000000000)
                                    ((_ to_fp 11 53) b_ack!2026)))
                    a!31))
      (a!36 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!34
                            (fp.mul roundNearestTiesToEven a!35 a!31))
                    ((_ to_fp 11 53) #x4028000000000000))))
(let ((a!37 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!32
                            (fp.mul roundNearestTiesToEven a!33 a!36))
                    ((_ to_fp 11 53) #x402a000000000000)))
      (a!40 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x402a000000000000)
                                    ((_ to_fp 11 53) b_ack!2026)))
                    a!36)))
(let ((a!38 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x402c000000000000)
                                    ((_ to_fp 11 53) b_ack!2026)))
                    a!37))
      (a!42 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!40
                            (fp.mul roundNearestTiesToEven a!41 a!37))
                    ((_ to_fp 11 53) #x402c000000000000))))
(let ((a!43 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!38
                            (fp.mul roundNearestTiesToEven a!39 a!42))
                    ((_ to_fp 11 53) #x402e000000000000)))
      (a!46 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x402e000000000000)
                                    ((_ to_fp 11 53) b_ack!2026)))
                    a!42)))
(let ((a!44 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4030000000000000)
                                    ((_ to_fp 11 53) b_ack!2026)))
                    a!43))
      (a!48 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!46
                            (fp.mul roundNearestTiesToEven a!47 a!43))
                    ((_ to_fp 11 53) #x4030000000000000))))
(let ((a!49 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!44
                            (fp.mul roundNearestTiesToEven a!45 a!48))
                    ((_ to_fp 11 53) #x4031000000000000)))
      (a!52 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4031000000000000)
                                    ((_ to_fp 11 53) b_ack!2026)))
                    a!48)))
(let ((a!50 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4032000000000000)
                                    ((_ to_fp 11 53) b_ack!2026)))
                    a!49))
      (a!54 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!52
                            (fp.mul roundNearestTiesToEven a!53 a!49))
                    ((_ to_fp 11 53) #x4032000000000000))))
(let ((a!55 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!50
                            (fp.mul roundNearestTiesToEven a!51 a!54))
                    ((_ to_fp 11 53) #x4033000000000000)))
      (a!58 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4033000000000000)
                                    ((_ to_fp 11 53) b_ack!2026)))
                    a!54)))
(let ((a!56 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4034000000000000)
                                    ((_ to_fp 11 53) b_ack!2026)))
                    a!55))
      (a!60 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!58
                            (fp.mul roundNearestTiesToEven a!59 a!55))
                    ((_ to_fp 11 53) #x4034000000000000))))
(let ((a!61 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!56
                            (fp.mul roundNearestTiesToEven a!57 a!60))
                    ((_ to_fp 11 53) #x4035000000000000)))
      (a!64 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4035000000000000)
                                    ((_ to_fp 11 53) b_ack!2026)))
                    a!60)))
(let ((a!62 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4036000000000000)
                                    ((_ to_fp 11 53) b_ack!2026)))
                    a!61))
      (a!66 (fp.mul roundNearestTiesToEven
                    a!63
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!64
                                    (fp.mul roundNearestTiesToEven a!65 a!61))
                            ((_ to_fp 11 53) #x4036000000000000)))))
  (FPCHECK_FDIV_ACCURACY
    (fp.add roundNearestTiesToEven a!62 a!66)
    #x4037000000000000))))))))))))))))))))))))

(check-sat)
(exit)
