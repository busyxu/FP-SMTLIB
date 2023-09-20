(declare-fun x_ack!6 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun mu_ack!5 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!6) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          ((_ to_fp 11 53) x_ack!6))
  mu_ack!5))

(check-sat)
(exit)
