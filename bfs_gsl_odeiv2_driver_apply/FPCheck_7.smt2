(declare-fun t_ack!25 () (_ BitVec 64))
(declare-fun t1_ack!24 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) t1_ack!24)
                                  ((_ to_fp 11 53) t_ack!25)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (FPCHECK_FSUB_UNDERFLOW t1_ack!24 t_ack!25))

(check-sat)
(exit)
