(declare-fun a_ack!25 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!25))
            ((_ to_fp 11 53) #x3fe62e42fefa39ef))))
(assert (FPCHECK_FSUB_UNDERFLOW (CF_exp a_ack!25) #x3ff0000000000000))

(check-sat)
(exit)
