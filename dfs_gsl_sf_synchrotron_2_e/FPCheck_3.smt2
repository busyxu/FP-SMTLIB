(declare-fun a_ack!7 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_pow ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!7) ((_ to_fp 11 53) #x3e66a09e667f3bcd)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff2d7be2398b31c)
          (CF_pow a_ack!7 #x3fd5555555555555))
  a_ack!7))

(check-sat)
(exit)
