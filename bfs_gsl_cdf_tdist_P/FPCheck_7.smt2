(declare-fun mu_ack!24 () (_ BitVec 64))
(declare-fun x_ack!25 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt ((_ to_fp 11 53) mu_ack!24) ((_ to_fp 11 53) #x403e000000000000))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!25)
                    ((_ to_fp 11 53) x_ack!25))
            ((_ to_fp 11 53) mu_ack!24))))
(assert (FPCHECK_FDIV_UNDERFLOW
  mu_ack!24
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!25)
          ((_ to_fp 11 53) x_ack!25))))

(check-sat)
(exit)
