(declare-fun a_ack!1206 () (_ BitVec 32))
(declare-fun c_ack!1205 () (_ BitVec 64))
(declare-fun b_ack!1204 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!1206 #x00000000)))
(assert (not (= #x00000000 a_ack!1206)))
(assert (not (= #x00000001 a_ack!1206)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1205) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1205) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!1206 #x00000005)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1205) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1206)
       ((_ to_fp 11 53) #x416312d000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1205) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1204) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1204) ((_ to_fp 11 53) #xc000000000000000))))
(assert (bvslt #x00000002 a_ack!1206))
(assert (bvslt #x00000003 a_ack!1206))
(assert (bvslt #x00000004 a_ack!1206))
(assert (bvslt #x00000005 a_ack!1206))
(assert (bvslt #x00000006 a_ack!1206))
(assert (bvslt #x00000007 a_ack!1206))
(assert (bvslt #x00000008 a_ack!1206))
(assert (bvslt #x00000009 a_ack!1206))
(assert (bvslt #x0000000a a_ack!1206))
(assert (bvslt #x0000000b a_ack!1206))
(assert (bvslt #x0000000c a_ack!1206))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) b_ack!1204))))
      (a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) b_ack!1204))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) c_ack!1205)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!1204)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!1204))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!1204)))
                   ((_ to_fp 11 53) c_ack!1205)))
      (a!9 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   ((_ to_fp 11 53) b_ack!1204))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) c_ack!1205)))
      (a!11 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    ((_ to_fp 11 53) b_ack!1204))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1205)))
      (a!15 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4028000000000000)
                                    ((_ to_fp 11 53) b_ack!1204))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1205)))
      (a!17 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!1204))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1205)))
      (a!21 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4030000000000000)
                                    ((_ to_fp 11 53) b_ack!1204))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1205)))
      (a!23 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x402c000000000000)
                                    ((_ to_fp 11 53) b_ack!1204))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1205)))
      (a!27 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4034000000000000)
                                    ((_ to_fp 11 53) b_ack!1204))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1205)))
      (a!29 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4032000000000000)
                                    ((_ to_fp 11 53) b_ack!1204))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1205)))
      (a!33 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4038000000000000)
                                    ((_ to_fp 11 53) b_ack!1204))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1205)))
      (a!35 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4036000000000000)
                                    ((_ to_fp 11 53) b_ack!1204))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) c_ack!1205))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1204))
                           ((_ to_fp 11 53) c_ack!1205))))
      (a!6 (fp.add roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) c_ack!1205))
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
                                    ((_ to_fp 11 53) b_ack!1204)))
                    a!6)))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) b_ack!1204)))
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
                                    ((_ to_fp 11 53) b_ack!1204)))
                    a!12)))
(let ((a!14 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    ((_ to_fp 11 53) b_ack!1204)))
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
                                    ((_ to_fp 11 53) b_ack!1204)))
                    a!18)))
(let ((a!20 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4020000000000000)
                                    ((_ to_fp 11 53) b_ack!1204)))
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
                                    ((_ to_fp 11 53) b_ack!1204)))
                    a!24)))
(let ((a!26 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4024000000000000)
                                    ((_ to_fp 11 53) b_ack!1204)))
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
                                    ((_ to_fp 11 53) b_ack!1204)))
                    a!30)))
(let ((a!32 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4028000000000000)
                                    ((_ to_fp 11 53) b_ack!1204)))
                    a!31))
      (a!36 (fp.mul roundNearestTiesToEven
                    a!33
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!34
                                    (fp.mul roundNearestTiesToEven a!35 a!31))
                            ((_ to_fp 11 53) #x4028000000000000)))))
  (FPCHECK_FADD_UNDERFLOW a!32 a!36))))))))))))))

(check-sat)
(exit)
