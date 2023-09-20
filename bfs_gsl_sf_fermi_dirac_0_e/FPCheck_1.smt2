(declare-fun a_ack!1 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1) ((_ to_fp 11 53) #xc014000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!1) ((_ to_fp 11 53) #x4024000000000000)))
(assert (FPCHECK_FADD_UNDERFLOW #x3ff0000000000000 (CF_exp a_ack!1)))

(check-sat)
(exit)
