(declare-fun b_ack!1361 () (_ BitVec 64))
(declare-fun a_ack!1363 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun c_ack!1362 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1361) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!1363 #x00000000)))
(assert (not (= #x00000000 a_ack!1363)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!1361) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000002 a_ack!1363))
(assert (bvsle #x00000003 a_ack!1363))
(assert (bvsle #x00000004 a_ack!1363))
(assert (bvsle #x00000005 a_ack!1363))
(assert (bvsle #x00000006 a_ack!1363))
(assert (bvsle #x00000007 a_ack!1363))
(assert (bvsle #x00000008 a_ack!1363))
(assert (bvsle #x00000009 a_ack!1363))
(assert (bvsle #x0000000a a_ack!1363))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   ((_ to_fp 11 53) b_ack!1361))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4022000000000000)
                                   ((_ to_fp 11 53) b_ack!1361))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   ((_ to_fp 11 53) b_ack!1361))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x401c000000000000)
                                   ((_ to_fp 11 53) b_ack!1361))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4018000000000000)
                                   ((_ to_fp 11 53) b_ack!1361))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4014000000000000)
                                   ((_ to_fp 11 53) b_ack!1361))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) b_ack!1361))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) b_ack!1361))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!1361))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!10 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1361)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!12 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1361)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!14 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1361)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!16 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4014000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1361)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!18 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4018000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1361)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!20 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x401c000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1361)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!22 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4020000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1361)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!24 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4022000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1361)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!26 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1361)))
                    ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!11 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) c_ack!1362))
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) c_ack!1362)))
                    (fp.mul roundNearestTiesToEven
                            a!10
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!13 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) c_ack!1362))
                            (fp.div roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!12
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) c_ack!1362))))))
(let ((a!15 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) c_ack!1362))
                            (fp.div roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) #x4008000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!14
                            (fp.div roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!17 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) c_ack!1362))
                            (fp.div roundNearestTiesToEven
                                    a!15
                                    ((_ to_fp 11 53) #x4010000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!16
                            (fp.div roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!19 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) c_ack!1362))
                            (fp.div roundNearestTiesToEven
                                    a!17
                                    ((_ to_fp 11 53) #x4014000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!18
                            (fp.div roundNearestTiesToEven
                                    a!15
                                    ((_ to_fp 11 53) #x4010000000000000))))))
(let ((a!21 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) c_ack!1362))
                            (fp.div roundNearestTiesToEven
                                    a!19
                                    ((_ to_fp 11 53) #x4018000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!20
                            (fp.div roundNearestTiesToEven
                                    a!17
                                    ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!23 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) c_ack!1362))
                            (fp.div roundNearestTiesToEven
                                    a!21
                                    ((_ to_fp 11 53) #x401c000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!22
                            (fp.div roundNearestTiesToEven
                                    a!19
                                    ((_ to_fp 11 53) #x4018000000000000))))))
(let ((a!25 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) c_ack!1362))
                            (fp.div roundNearestTiesToEven
                                    a!23
                                    ((_ to_fp 11 53) #x4020000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!24
                            (fp.div roundNearestTiesToEven
                                    a!21
                                    ((_ to_fp 11 53) #x401c000000000000))))))
(let ((a!27 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) c_ack!1362))
                            (fp.div roundNearestTiesToEven
                                    a!25
                                    ((_ to_fp 11 53) #x4022000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!26
                            (fp.div roundNearestTiesToEven
                                    a!23
                                    ((_ to_fp 11 53) #x4020000000000000))))))
  (FPCHECK_FDIV_ACCURACY a!27 #x4024000000000000))))))))))))

(check-sat)
(exit)
