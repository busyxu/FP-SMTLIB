(declare-fun a_ack!760 () (_ BitVec 64))
(declare-fun b_ack!759 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!760) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!760) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!760) ((_ to_fp 11 53) #x4000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!760))
                           ((_ to_fp 11 53) #x4006a09e667f3bcd))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x40862642fefa39ef)))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!760) ((_ to_fp 11 53) #x4010000000000000))))
(assert (not (= #x00000000 (bvand b_ack!759 #x00000007))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!760))
                           ((_ to_fp 11 53) #x4006a09e667f3bcd))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (FPCHECK_FMUL_ACCURACY #x3ff8000000000000 a!1)))

(check-sat)
(exit)
