(declare-fun a_ack!195 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun b_ack!194 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) a_ack!195) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff5555555555555)
          ((_ to_fp 11 53) b_ack!194))
  b_ack!194))

(check-sat)
(exit)
