(declare-fun a_ack!107 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_pow ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!107) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!107) ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!107) ((_ to_fp 11 53) #x4010000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  (CF_pow a_ack!107 #x3fd5555555555555)
  (CF_pow a_ack!107 #x3fd5555555555555)))

(check-sat)
(exit)
