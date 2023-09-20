(declare-fun a_ack!1617 () (_ BitVec 32))
(declare-fun c_ack!1616 () (_ BitVec 64))
(declare-fun b_ack!1615 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!1617 #x00000000)))
(assert (not (= #x00000000 a_ack!1617)))
(assert (not (= #x00000001 a_ack!1617)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1616) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1616) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!1617 #x00000005)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1616) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1617)
       ((_ to_fp 11 53) #x416312d000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1616) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1615) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1615) ((_ to_fp 11 53) #xc000000000000000))))
(assert (bvslt #x00000002 a_ack!1617))
(assert (bvslt #x00000003 a_ack!1617))
(assert (bvslt #x00000004 a_ack!1617))
(assert (bvslt #x00000005 a_ack!1617))
(assert (bvslt #x00000006 a_ack!1617))
(assert (bvslt #x00000007 a_ack!1617))
(assert (bvslt #x00000008 a_ack!1617))
(assert (bvslt #x00000009 a_ack!1617))
(assert (bvslt #x0000000a a_ack!1617))
(assert (bvslt #x0000000b a_ack!1617))
(assert (bvslt #x0000000c a_ack!1617))
(assert (bvslt #x0000000d a_ack!1617))
(assert (bvslt #x0000000e a_ack!1617))
(assert (bvslt #x0000000f a_ack!1617))
(assert (bvslt #x00000010 a_ack!1617))
(assert (bvslt #x00000011 a_ack!1617))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!1615)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!1615))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) b_ack!1615))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!1615)))
                   ((_ to_fp 11 53) c_ack!1616)))
      (a!6 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4018000000000000)
                                   ((_ to_fp 11 53) b_ack!1615))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) c_ack!1616)))
      (a!8 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) b_ack!1615))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) c_ack!1616)))
      (a!12 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!1615))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1616)))
      (a!14 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4020000000000000)
                                    ((_ to_fp 11 53) b_ack!1615))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1616)))
      (a!18 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x402c000000000000)
                                    ((_ to_fp 11 53) b_ack!1615))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1616)))
      (a!20 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4028000000000000)
                                    ((_ to_fp 11 53) b_ack!1615))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1616)))
      (a!24 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4032000000000000)
                                    ((_ to_fp 11 53) b_ack!1615))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1616)))
      (a!26 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4030000000000000)
                                    ((_ to_fp 11 53) b_ack!1615))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1616)))
      (a!30 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4036000000000000)
                                    ((_ to_fp 11 53) b_ack!1615))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1616)))
      (a!32 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4034000000000000)
                                    ((_ to_fp 11 53) b_ack!1615))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1616)))
      (a!36 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x403a000000000000)
                                    ((_ to_fp 11 53) b_ack!1615))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1616)))
      (a!38 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4038000000000000)
                                    ((_ to_fp 11 53) b_ack!1615))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1616)))
      (a!42 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x403e000000000000)
                                    ((_ to_fp 11 53) b_ack!1615))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1616)))
      (a!44 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x403c000000000000)
                                    ((_ to_fp 11 53) b_ack!1615))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1616)))
      (a!48 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4041000000000000)
                                    ((_ to_fp 11 53) b_ack!1615))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1616)))
      (a!50 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4040000000000000)
                                    ((_ to_fp 11 53) b_ack!1615))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1616))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) c_ack!1616))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!3))))
      (a!7 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1615))
                           ((_ to_fp 11 53) c_ack!1616)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) b_ack!1615)))
                   a!4))
      (a!9 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!7
                           (fp.mul roundNearestTiesToEven a!8 a!4))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!10 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!5
                            (fp.mul roundNearestTiesToEven a!6 a!9))
                    ((_ to_fp 11 53) #x4010000000000000)))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    ((_ to_fp 11 53) b_ack!1615)))
                    a!9)))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4014000000000000)
                                    ((_ to_fp 11 53) b_ack!1615)))
                    a!10))
      (a!15 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!13
                            (fp.mul roundNearestTiesToEven a!14 a!10))
                    ((_ to_fp 11 53) #x4014000000000000))))
(let ((a!16 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!11
                            (fp.mul roundNearestTiesToEven a!12 a!15))
                    ((_ to_fp 11 53) #x4018000000000000)))
      (a!19 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    ((_ to_fp 11 53) b_ack!1615)))
                    a!15)))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x401c000000000000)
                                    ((_ to_fp 11 53) b_ack!1615)))
                    a!16))
      (a!21 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!19
                            (fp.mul roundNearestTiesToEven a!20 a!16))
                    ((_ to_fp 11 53) #x401c000000000000))))
(let ((a!22 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!17
                            (fp.mul roundNearestTiesToEven a!18 a!21))
                    ((_ to_fp 11 53) #x4020000000000000)))
      (a!25 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4020000000000000)
                                    ((_ to_fp 11 53) b_ack!1615)))
                    a!21)))
(let ((a!23 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4022000000000000)
                                    ((_ to_fp 11 53) b_ack!1615)))
                    a!22))
      (a!27 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!25
                            (fp.mul roundNearestTiesToEven a!26 a!22))
                    ((_ to_fp 11 53) #x4022000000000000))))
(let ((a!28 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!23
                            (fp.mul roundNearestTiesToEven a!24 a!27))
                    ((_ to_fp 11 53) #x4024000000000000)))
      (a!31 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!1615)))
                    a!27)))
(let ((a!29 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4026000000000000)
                                    ((_ to_fp 11 53) b_ack!1615)))
                    a!28))
      (a!33 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!31
                            (fp.mul roundNearestTiesToEven a!32 a!28))
                    ((_ to_fp 11 53) #x4026000000000000))))
(let ((a!34 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!29
                            (fp.mul roundNearestTiesToEven a!30 a!33))
                    ((_ to_fp 11 53) #x4028000000000000)))
      (a!37 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4028000000000000)
                                    ((_ to_fp 11 53) b_ack!1615)))
                    a!33)))
(let ((a!35 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x402a000000000000)
                                    ((_ to_fp 11 53) b_ack!1615)))
                    a!34))
      (a!39 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!37
                            (fp.mul roundNearestTiesToEven a!38 a!34))
                    ((_ to_fp 11 53) #x402a000000000000))))
(let ((a!40 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!35
                            (fp.mul roundNearestTiesToEven a!36 a!39))
                    ((_ to_fp 11 53) #x402c000000000000)))
      (a!43 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x402c000000000000)
                                    ((_ to_fp 11 53) b_ack!1615)))
                    a!39)))
(let ((a!41 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x402e000000000000)
                                    ((_ to_fp 11 53) b_ack!1615)))
                    a!40))
      (a!45 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!43
                            (fp.mul roundNearestTiesToEven a!44 a!40))
                    ((_ to_fp 11 53) #x402e000000000000))))
(let ((a!46 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!41
                            (fp.mul roundNearestTiesToEven a!42 a!45))
                    ((_ to_fp 11 53) #x4030000000000000)))
      (a!49 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4030000000000000)
                                    ((_ to_fp 11 53) b_ack!1615)))
                    a!45)))
(let ((a!47 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4031000000000000)
                                    ((_ to_fp 11 53) b_ack!1615)))
                    a!46))
      (a!51 (fp.mul roundNearestTiesToEven
                    a!48
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!49
                                    (fp.mul roundNearestTiesToEven a!50 a!46))
                            ((_ to_fp 11 53) #x4031000000000000)))))
  (FPCHECK_FDIV_OVERFLOW
    (fp.add roundNearestTiesToEven a!47 a!51)
    #x4032000000000000)))))))))))))))))))

(check-sat)
(exit)
