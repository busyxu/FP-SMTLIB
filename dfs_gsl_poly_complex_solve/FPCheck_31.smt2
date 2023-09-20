(declare-fun a5_ack!103 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun a3_ack!102 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a5_ack!103) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ZERO
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          ((_ to_fp 11 53) a3_ack!102))
  a5_ack!103))

(check-sat)
(exit)
