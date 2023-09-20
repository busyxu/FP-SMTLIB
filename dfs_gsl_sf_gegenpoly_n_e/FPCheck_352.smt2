(declare-fun b_ack!1693 () (_ BitVec 64))
(declare-fun a_ack!1695 () (_ BitVec 32))
(declare-fun c_ack!1694 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1693) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!1695 #x00000000)))
(assert (not (= #x00000000 a_ack!1695)))
(assert (not (= #x00000001 a_ack!1695)))
(assert (not (= #x00000002 a_ack!1695)))
(assert (not (= #x00000003 a_ack!1695)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!1693) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq ((_ to_fp 11 53) c_ack!1694) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1694) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!1693) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!1693) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000004 a_ack!1695))
(assert (bvsle #x00000005 a_ack!1695))
(assert (bvsle #x00000006 a_ack!1695))
(assert (bvsle #x00000007 a_ack!1695))
(assert (bvsle #x00000008 a_ack!1695))
(assert (bvsle #x00000009 a_ack!1695))
(assert (bvsle #x0000000a a_ack!1695))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   ((_ to_fp 11 53) b_ack!1693))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4022000000000000)
                                   ((_ to_fp 11 53) b_ack!1693))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   ((_ to_fp 11 53) b_ack!1693))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x401c000000000000)
                                   ((_ to_fp 11 53) b_ack!1693))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4018000000000000)
                                   ((_ to_fp 11 53) b_ack!1693))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4014000000000000)
                                   ((_ to_fp 11 53) b_ack!1693))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) b_ack!1693))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff5555555555555)
                                   ((_ to_fp 11 53) c_ack!1694))
                           ((_ to_fp 11 53) c_ack!1694))))
      (a!9 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!1693)))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!10 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) c_ack!1694))
                            ((_ to_fp 11 53) c_ack!1694))))
      (a!12 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4014000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1693)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!14 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4018000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1693)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!16 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x401c000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1693)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!18 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4020000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1693)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!20 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4022000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1693)))
                    ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!11 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) c_ack!1694))
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!1694)
                                    a!8))
                    (fp.mul roundNearestTiesToEven a!9 a!10))))
(let ((a!13 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) c_ack!1694))
                            (fp.div roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x4010000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!12
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!1694)
                                    a!8)))))
(let ((a!15 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) c_ack!1694))
                            (fp.div roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) #x4014000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!14
                            (fp.div roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x4010000000000000))))))
(let ((a!17 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) c_ack!1694))
                            (fp.div roundNearestTiesToEven
                                    a!15
                                    ((_ to_fp 11 53) #x4018000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!16
                            (fp.div roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!19 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) c_ack!1694))
                            (fp.div roundNearestTiesToEven
                                    a!17
                                    ((_ to_fp 11 53) #x401c000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!18
                            (fp.div roundNearestTiesToEven
                                    a!15
                                    ((_ to_fp 11 53) #x4018000000000000))))))
(let ((a!21 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) c_ack!1694))
                            (fp.div roundNearestTiesToEven
                                    a!19
                                    ((_ to_fp 11 53) #x4020000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!20
                            (fp.div roundNearestTiesToEven
                                    a!17
                                    ((_ to_fp 11 53) #x401c000000000000))))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.mul roundNearestTiesToEven a!1 ((_ to_fp 11 53) c_ack!1694))
    (fp.div roundNearestTiesToEven a!21 ((_ to_fp 11 53) #x4022000000000000)))))))))))

(check-sat)
(exit)
