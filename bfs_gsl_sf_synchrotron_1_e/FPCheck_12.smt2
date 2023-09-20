(declare-fun a_ack!20 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_pow ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!20) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!20) ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!20) ((_ to_fp 11 53) #x4010000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (CF_pow a_ack!20 #x3fd5555555555555))
  (fp.mul roundNearestTiesToEven
          (CF_pow a_ack!20 #x3fd5555555555555)
          (CF_pow a_ack!20 #x3fd5555555555555))))

(check-sat)
(exit)
