(declare-fun a_ack!1518 () (_ BitVec 32))
(declare-fun c_ack!1517 () (_ BitVec 64))
(declare-fun b_ack!1516 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!1518 #x00000000)))
(assert (not (= #x00000000 a_ack!1518)))
(assert (not (= #x00000001 a_ack!1518)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1517) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1517) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!1518 #x00000005)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1517) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1518)
       ((_ to_fp 11 53) #x416312d000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1517) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1516) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1516) ((_ to_fp 11 53) #xc000000000000000))))
(assert (bvslt #x00000002 a_ack!1518))
(assert (bvslt #x00000003 a_ack!1518))
(assert (bvslt #x00000004 a_ack!1518))
(assert (bvslt #x00000005 a_ack!1518))
(assert (bvslt #x00000006 a_ack!1518))
(assert (bvslt #x00000007 a_ack!1518))
(assert (bvslt #x00000008 a_ack!1518))
(assert (bvslt #x00000009 a_ack!1518))
(assert (bvslt #x0000000a a_ack!1518))
(assert (bvslt #x0000000b a_ack!1518))
(assert (bvslt #x0000000c a_ack!1518))
(assert (bvslt #x0000000d a_ack!1518))
(assert (bvslt #x0000000e a_ack!1518))
(assert (bvslt #x0000000f a_ack!1518))
(assert (bvslt #x00000010 a_ack!1518))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4040000000000000)
                                   ((_ to_fp 11 53) b_ack!1516))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) c_ack!1517)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!1516)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!1516))))
      (a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) b_ack!1516))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!1516)))
                   ((_ to_fp 11 53) c_ack!1517)))
      (a!7 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4018000000000000)
                                   ((_ to_fp 11 53) b_ack!1516))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) c_ack!1517)))
      (a!9 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) b_ack!1516))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) c_ack!1517)))
      (a!13 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!1516))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1517)))
      (a!15 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4020000000000000)
                                    ((_ to_fp 11 53) b_ack!1516))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1517)))
      (a!19 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x402c000000000000)
                                    ((_ to_fp 11 53) b_ack!1516))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1517)))
      (a!21 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4028000000000000)
                                    ((_ to_fp 11 53) b_ack!1516))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1517)))
      (a!25 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4032000000000000)
                                    ((_ to_fp 11 53) b_ack!1516))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1517)))
      (a!27 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4030000000000000)
                                    ((_ to_fp 11 53) b_ack!1516))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1517)))
      (a!31 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4036000000000000)
                                    ((_ to_fp 11 53) b_ack!1516))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1517)))
      (a!33 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4034000000000000)
                                    ((_ to_fp 11 53) b_ack!1516))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1517)))
      (a!37 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x403a000000000000)
                                    ((_ to_fp 11 53) b_ack!1516))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1517)))
      (a!39 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4038000000000000)
                                    ((_ to_fp 11 53) b_ack!1516))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1517)))
      (a!43 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x403e000000000000)
                                    ((_ to_fp 11 53) b_ack!1516))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1517)))
      (a!45 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x403c000000000000)
                                    ((_ to_fp 11 53) b_ack!1516))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1517))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) c_ack!1517))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4))))
      (a!8 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1516))
                           ((_ to_fp 11 53) c_ack!1517)))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) b_ack!1516)))
                   a!5))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven a!9 a!5))
                    ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!11 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!6
                            (fp.mul roundNearestTiesToEven a!7 a!10))
                    ((_ to_fp 11 53) #x4010000000000000)))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    ((_ to_fp 11 53) b_ack!1516)))
                    a!10)))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4014000000000000)
                                    ((_ to_fp 11 53) b_ack!1516)))
                    a!11))
      (a!16 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!14
                            (fp.mul roundNearestTiesToEven a!15 a!11))
                    ((_ to_fp 11 53) #x4014000000000000))))
(let ((a!17 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!12
                            (fp.mul roundNearestTiesToEven a!13 a!16))
                    ((_ to_fp 11 53) #x4018000000000000)))
      (a!20 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    ((_ to_fp 11 53) b_ack!1516)))
                    a!16)))
(let ((a!18 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x401c000000000000)
                                    ((_ to_fp 11 53) b_ack!1516)))
                    a!17))
      (a!22 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!20
                            (fp.mul roundNearestTiesToEven a!21 a!17))
                    ((_ to_fp 11 53) #x401c000000000000))))
(let ((a!23 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!18
                            (fp.mul roundNearestTiesToEven a!19 a!22))
                    ((_ to_fp 11 53) #x4020000000000000)))
      (a!26 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4020000000000000)
                                    ((_ to_fp 11 53) b_ack!1516)))
                    a!22)))
(let ((a!24 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4022000000000000)
                                    ((_ to_fp 11 53) b_ack!1516)))
                    a!23))
      (a!28 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!26
                            (fp.mul roundNearestTiesToEven a!27 a!23))
                    ((_ to_fp 11 53) #x4022000000000000))))
(let ((a!29 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!24
                            (fp.mul roundNearestTiesToEven a!25 a!28))
                    ((_ to_fp 11 53) #x4024000000000000)))
      (a!32 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!1516)))
                    a!28)))
(let ((a!30 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4026000000000000)
                                    ((_ to_fp 11 53) b_ack!1516)))
                    a!29))
      (a!34 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!32
                            (fp.mul roundNearestTiesToEven a!33 a!29))
                    ((_ to_fp 11 53) #x4026000000000000))))
(let ((a!35 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!30
                            (fp.mul roundNearestTiesToEven a!31 a!34))
                    ((_ to_fp 11 53) #x4028000000000000)))
      (a!38 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4028000000000000)
                                    ((_ to_fp 11 53) b_ack!1516)))
                    a!34)))
(let ((a!36 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x402a000000000000)
                                    ((_ to_fp 11 53) b_ack!1516)))
                    a!35))
      (a!40 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!38
                            (fp.mul roundNearestTiesToEven a!39 a!35))
                    ((_ to_fp 11 53) #x402a000000000000))))
(let ((a!41 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!36
                            (fp.mul roundNearestTiesToEven a!37 a!40))
                    ((_ to_fp 11 53) #x402c000000000000)))
      (a!44 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x402c000000000000)
                                    ((_ to_fp 11 53) b_ack!1516)))
                    a!40)))
(let ((a!42 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x402e000000000000)
                                    ((_ to_fp 11 53) b_ack!1516)))
                    a!41))
      (a!46 (fp.mul roundNearestTiesToEven
                    a!43
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!44
                                    (fp.mul roundNearestTiesToEven a!45 a!41))
                            ((_ to_fp 11 53) #x402e000000000000)))))
  (FPCHECK_FMUL_OVERFLOW
    a!1
    (fp.div roundNearestTiesToEven
            (fp.add roundNearestTiesToEven a!42 a!46)
            ((_ to_fp 11 53) #x4030000000000000)))))))))))))))))))

(check-sat)
(exit)
