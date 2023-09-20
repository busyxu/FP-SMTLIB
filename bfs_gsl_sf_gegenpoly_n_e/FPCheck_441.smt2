(declare-fun b_ack!2263 () (_ BitVec 64))
(declare-fun a_ack!2265 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun c_ack!2264 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2263) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!2265 #x00000000)))
(assert (not (= #x00000000 a_ack!2265)))
(assert (not (= #x00000001 a_ack!2265)))
(assert (not (= #x00000002 a_ack!2265)))
(assert (not (= #x00000003 a_ack!2265)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2263) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2263) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2263) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvsle #x00000004 a_ack!2265))
(assert (bvsle #x00000005 a_ack!2265))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4014000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!2263)))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!2263)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4018000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!2263))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   a!2)
                           ((_ to_fp 11 53) c_ack!2264))
                   ((_ to_fp 11 53) c_ack!2264))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!2263))
                           ((_ to_fp 11 53) c_ack!2264))
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbff0000000000000)
                                   ((_ to_fp 11 53) b_ack!2263))
                           (fp.div roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))))))
  (FPCHECK_FMUL_UNDERFLOW a!1 a!4)))))

(check-sat)
(exit)
