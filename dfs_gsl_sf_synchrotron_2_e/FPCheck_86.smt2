(declare-fun a_ack!123 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_pow ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!123) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!123) ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!123) ((_ to_fp 11 53) #x4010000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3ff0000000000000
  (CF_pow a_ack!123 #x3fd5555555555555)))

(check-sat)
(exit)
