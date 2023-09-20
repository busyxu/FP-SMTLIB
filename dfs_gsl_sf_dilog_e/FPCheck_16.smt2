(declare-fun a_ack!25 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.geq ((_ to_fp 11 53) a_ack!25) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!25) ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!25) ((_ to_fp 11 53) #x3ff028f5c28f5c29))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!25) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!25) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!25) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!25) ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!25) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!25)
                           ((_ to_fp 11 53) a_ack!25))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!25)
                                   a!1)))))
  (fp.lt a!2 ((_ to_fp 11 53) #x3cb0000000000000)))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!25)
                                   ((_ to_fp 11 53) a_ack!25))
                           ((_ to_fp 11 53) #x3fd0000000000000)))))
  (FPCHECK_FMUL_ACCURACY #x4000000000000000 a!1)))

(check-sat)
(exit)
