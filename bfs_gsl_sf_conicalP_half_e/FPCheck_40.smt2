(declare-fun b_ack!79 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun a_ack!80 () (_ BitVec 64))
(declare-fun CF_acos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!79) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!79) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.abs (fp.mul roundNearestTiesToEven
                  (CF_acos b_ack!79)
                  ((_ to_fp 11 53) a_ack!80)))
  #x3ff0000000000000))

(check-sat)
(exit)
