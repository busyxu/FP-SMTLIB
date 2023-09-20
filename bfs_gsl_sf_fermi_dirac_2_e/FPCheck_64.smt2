(declare-fun a_ack!77 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!77) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!77) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (FPCHECK_FSUB_OVERFLOW #x8000000000000000 (CF_exp a_ack!77)))

(check-sat)
(exit)
