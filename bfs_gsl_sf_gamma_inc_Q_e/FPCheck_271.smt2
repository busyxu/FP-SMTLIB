(declare-fun a_ack!726 () (_ BitVec 64))
(declare-fun b_ack!725 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!726) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!725) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!725) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!726) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!725)
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!726)))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!726) ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!726) ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!726) ((_ to_fp 11 53) b_ack!725))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!725)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!726)
                    ((_ to_fp 11 53) #xffffffffffffffff)))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!726) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!725)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!726)))))
(assert (let ((a!1 (fp.leq (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!725)
                                   ((_ to_fp 11 53) a_ack!726))
                           ((_ to_fp 11 53) a_ack!726))
                   ((_ to_fp 11 53) #xbff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!725)
                                   ((_ to_fp 11 53) a_ack!726))
                           ((_ to_fp 11 53) a_ack!726)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f48406003b2ae5a)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!725)
                                   ((_ to_fp 11 53) a_ack!726))
                           ((_ to_fp 11 53) a_ack!726)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3fe0000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!725)
                                   ((_ to_fp 11 53) a_ack!726))
                           ((_ to_fp 11 53) a_ack!726)))))
  (FPCHECK_FMUL_OVERFLOW #x3cb0000000000000 a!1)))

(check-sat)
(exit)
