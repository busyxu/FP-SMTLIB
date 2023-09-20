(declare-fun x_ack!11 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun mu_ack!10 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) roundNearestTiesToEven x_ack!11)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          ((_ to_fp 11 53) roundNearestTiesToEven x_ack!11))
  mu_ack!10))

(check-sat)
(exit)
