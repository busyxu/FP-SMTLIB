(declare-fun b_ack!2550 () (_ BitVec 64))
(declare-fun a_ack!2552 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun c_ack!2551 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2550) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!2552 #x00000000)))
(assert (not (= #x00000000 a_ack!2552)))
(assert (not (= #x00000001 a_ack!2552)))
(assert (not (= #x00000002 a_ack!2552)))
(assert (not (= #x00000003 a_ack!2552)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2550) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2550) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2550) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvsle #x00000004 a_ack!2552))
(assert (bvsle #x00000005 a_ack!2552))
(assert (bvsle #x00000006 a_ack!2552))
(assert (bvsle #x00000007 a_ack!2552))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x401c000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!2550)))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4014000000000000)
                                   ((_ to_fp 11 53) b_ack!2550))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) b_ack!2550))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!2550)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4018000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!2550)))))
      (a!7 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!2550)))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!2550)))
                   ((_ to_fp 11 53) c_ack!2551)))
      (a!11 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4014000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!2550)))
                    ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   a!4)
                           ((_ to_fp 11 53) c_ack!2551))
                   ((_ to_fp 11 53) c_ack!2551)))
      (a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!2550)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!8
                                   ((_ to_fp 11 53) c_ack!2551))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!2550))
                           ((_ to_fp 11 53) c_ack!2551))
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbff0000000000000)
                                   ((_ to_fp 11 53) b_ack!2550))
                           (fp.div roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!10 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) c_ack!2551))
                            a!6)
                    (fp.mul roundNearestTiesToEven a!7 a!9))))
(let ((a!12 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) c_ack!2551))
                            (fp.div roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x4010000000000000)))
                    (fp.mul roundNearestTiesToEven a!11 a!6))))
  (FPCHECK_FMUL_UNDERFLOW
    a!1
    (fp.div roundNearestTiesToEven a!12 ((_ to_fp 11 53) #x4014000000000000)))))))))

(check-sat)
(exit)
