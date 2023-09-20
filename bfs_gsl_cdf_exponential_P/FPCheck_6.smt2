(declare-fun x_ack!18 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun mu_ack!17 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!18) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ZERO
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          ((_ to_fp 11 53) x_ack!18))
  mu_ack!17))

(check-sat)
(exit)
