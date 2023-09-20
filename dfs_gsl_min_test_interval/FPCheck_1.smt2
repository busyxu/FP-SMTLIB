(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun a_ack!1 () (_ BitVec 64))
(assert (FPCHECK_FADD_UNDERFLOW (CF_cos a_ack!1) #x3ff0000000000000))

(check-sat)
(exit)
