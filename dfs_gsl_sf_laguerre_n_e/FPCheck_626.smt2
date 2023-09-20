(declare-fun a_ack!1923 () (_ BitVec 32))
(declare-fun c_ack!1922 () (_ BitVec 64))
(declare-fun b_ack!1921 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!1923 #x00000000)))
(assert (not (= #x00000000 a_ack!1923)))
(assert (not (= #x00000001 a_ack!1923)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1922) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1922) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!1923 #x00000005)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1922) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1923)
       ((_ to_fp 11 53) #x416312d000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1922) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1921) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1921) ((_ to_fp 11 53) #xc000000000000000))))
(assert (bvslt #x00000002 a_ack!1923))
(assert (bvslt #x00000003 a_ack!1923))
(assert (bvslt #x00000004 a_ack!1923))
(assert (bvslt #x00000005 a_ack!1923))
(assert (bvslt #x00000006 a_ack!1923))
(assert (bvslt #x00000007 a_ack!1923))
(assert (bvslt #x00000008 a_ack!1923))
(assert (bvslt #x00000009 a_ack!1923))
(assert (bvslt #x0000000a a_ack!1923))
(assert (bvslt #x0000000b a_ack!1923))
(assert (bvslt #x0000000c a_ack!1923))
(assert (bvslt #x0000000d a_ack!1923))
(assert (bvslt #x0000000e a_ack!1923))
(assert (bvslt #x0000000f a_ack!1923))
(assert (bvslt #x00000010 a_ack!1923))
(assert (bvslt #x00000011 a_ack!1923))
(assert (bvslt #x00000012 a_ack!1923))
(assert (bvslt #x00000013 a_ack!1923))
(assert (bvslt #x00000014 a_ack!1923))
(assert (bvslt #x00000015 a_ack!1923))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4045000000000000)
                                   ((_ to_fp 11 53) b_ack!1921))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) c_ack!1922)))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) b_ack!1921))))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) b_ack!1921))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) c_ack!1922)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!1921)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!1921))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!1921)))
                   ((_ to_fp 11 53) c_ack!1922)))
      (a!10 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4020000000000000)
                                    ((_ to_fp 11 53) b_ack!1921))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1922)))
      (a!12 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    ((_ to_fp 11 53) b_ack!1921))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1922)))
      (a!16 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4028000000000000)
                                    ((_ to_fp 11 53) b_ack!1921))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1922)))
      (a!18 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!1921))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1922)))
      (a!22 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4030000000000000)
                                    ((_ to_fp 11 53) b_ack!1921))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1922)))
      (a!24 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x402c000000000000)
                                    ((_ to_fp 11 53) b_ack!1921))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1922)))
      (a!28 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4034000000000000)
                                    ((_ to_fp 11 53) b_ack!1921))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1922)))
      (a!30 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4032000000000000)
                                    ((_ to_fp 11 53) b_ack!1921))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1922)))
      (a!34 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4038000000000000)
                                    ((_ to_fp 11 53) b_ack!1921))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1922)))
      (a!36 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4036000000000000)
                                    ((_ to_fp 11 53) b_ack!1921))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1922)))
      (a!40 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x403c000000000000)
                                    ((_ to_fp 11 53) b_ack!1921))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1922)))
      (a!42 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x403a000000000000)
                                    ((_ to_fp 11 53) b_ack!1921))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1922)))
      (a!46 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4040000000000000)
                                    ((_ to_fp 11 53) b_ack!1921))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1922)))
      (a!48 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x403e000000000000)
                                    ((_ to_fp 11 53) b_ack!1921))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1922)))
      (a!52 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4042000000000000)
                                    ((_ to_fp 11 53) b_ack!1921))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1922)))
      (a!54 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4041000000000000)
                                    ((_ to_fp 11 53) b_ack!1921))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1922)))
      (a!58 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4044000000000000)
                                    ((_ to_fp 11 53) b_ack!1921))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1922)))
      (a!60 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4043000000000000)
                                    ((_ to_fp 11 53) b_ack!1921))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1922))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1921))
                           ((_ to_fp 11 53) c_ack!1922))))
      (a!7 (fp.add roundNearestTiesToEven
                   a!5
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) c_ack!1922))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!6)))))
(let ((a!8 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven a!4 a!7))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!1921)))
                    a!7)))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) b_ack!1921)))
                   a!8))
      (a!13 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!11
                            (fp.mul roundNearestTiesToEven a!12 a!8))
                    ((_ to_fp 11 53) #x4010000000000000))))
(let ((a!14 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven a!10 a!13))
                    ((_ to_fp 11 53) #x4014000000000000)))
      (a!17 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4014000000000000)
                                    ((_ to_fp 11 53) b_ack!1921)))
                    a!13)))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    ((_ to_fp 11 53) b_ack!1921)))
                    a!14))
      (a!19 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!17
                            (fp.mul roundNearestTiesToEven a!18 a!14))
                    ((_ to_fp 11 53) #x4018000000000000))))
(let ((a!20 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!15
                            (fp.mul roundNearestTiesToEven a!16 a!19))
                    ((_ to_fp 11 53) #x401c000000000000)))
      (a!23 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x401c000000000000)
                                    ((_ to_fp 11 53) b_ack!1921)))
                    a!19)))
(let ((a!21 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4020000000000000)
                                    ((_ to_fp 11 53) b_ack!1921)))
                    a!20))
      (a!25 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!23
                            (fp.mul roundNearestTiesToEven a!24 a!20))
                    ((_ to_fp 11 53) #x4020000000000000))))
(let ((a!26 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!21
                            (fp.mul roundNearestTiesToEven a!22 a!25))
                    ((_ to_fp 11 53) #x4022000000000000)))
      (a!29 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4022000000000000)
                                    ((_ to_fp 11 53) b_ack!1921)))
                    a!25)))
(let ((a!27 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!1921)))
                    a!26))
      (a!31 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!29
                            (fp.mul roundNearestTiesToEven a!30 a!26))
                    ((_ to_fp 11 53) #x4024000000000000))))
(let ((a!32 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!27
                            (fp.mul roundNearestTiesToEven a!28 a!31))
                    ((_ to_fp 11 53) #x4026000000000000)))
      (a!35 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4026000000000000)
                                    ((_ to_fp 11 53) b_ack!1921)))
                    a!31)))
(let ((a!33 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4028000000000000)
                                    ((_ to_fp 11 53) b_ack!1921)))
                    a!32))
      (a!37 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!35
                            (fp.mul roundNearestTiesToEven a!36 a!32))
                    ((_ to_fp 11 53) #x4028000000000000))))
(let ((a!38 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!33
                            (fp.mul roundNearestTiesToEven a!34 a!37))
                    ((_ to_fp 11 53) #x402a000000000000)))
      (a!41 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x402a000000000000)
                                    ((_ to_fp 11 53) b_ack!1921)))
                    a!37)))
(let ((a!39 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x402c000000000000)
                                    ((_ to_fp 11 53) b_ack!1921)))
                    a!38))
      (a!43 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!41
                            (fp.mul roundNearestTiesToEven a!42 a!38))
                    ((_ to_fp 11 53) #x402c000000000000))))
(let ((a!44 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!39
                            (fp.mul roundNearestTiesToEven a!40 a!43))
                    ((_ to_fp 11 53) #x402e000000000000)))
      (a!47 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x402e000000000000)
                                    ((_ to_fp 11 53) b_ack!1921)))
                    a!43)))
(let ((a!45 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4030000000000000)
                                    ((_ to_fp 11 53) b_ack!1921)))
                    a!44))
      (a!49 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!47
                            (fp.mul roundNearestTiesToEven a!48 a!44))
                    ((_ to_fp 11 53) #x4030000000000000))))
(let ((a!50 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!45
                            (fp.mul roundNearestTiesToEven a!46 a!49))
                    ((_ to_fp 11 53) #x4031000000000000)))
      (a!53 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4031000000000000)
                                    ((_ to_fp 11 53) b_ack!1921)))
                    a!49)))
(let ((a!51 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4032000000000000)
                                    ((_ to_fp 11 53) b_ack!1921)))
                    a!50))
      (a!55 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!53
                            (fp.mul roundNearestTiesToEven a!54 a!50))
                    ((_ to_fp 11 53) #x4032000000000000))))
(let ((a!56 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!51
                            (fp.mul roundNearestTiesToEven a!52 a!55))
                    ((_ to_fp 11 53) #x4033000000000000)))
      (a!59 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4033000000000000)
                                    ((_ to_fp 11 53) b_ack!1921)))
                    a!55)))
(let ((a!57 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4034000000000000)
                                    ((_ to_fp 11 53) b_ack!1921)))
                    a!56))
      (a!61 (fp.mul roundNearestTiesToEven
                    a!58
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!59
                                    (fp.mul roundNearestTiesToEven a!60 a!56))
                            ((_ to_fp 11 53) #x4034000000000000)))))
  (FPCHECK_FMUL_OVERFLOW
    a!1
    (fp.div roundNearestTiesToEven
            (fp.add roundNearestTiesToEven a!57 a!61)
            ((_ to_fp 11 53) #x4035000000000000))))))))))))))))))))))))

(check-sat)
(exit)
