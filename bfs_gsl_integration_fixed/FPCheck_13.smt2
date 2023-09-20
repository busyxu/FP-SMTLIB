(declare-fun b_ack!39 () (_ BitVec 64))
(declare-fun alpha_ack!40 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!39) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) alpha_ack!40)
             ((_ to_fp 11 53) #xbff0000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW
  #x4000000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) alpha_ack!40)
          ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
