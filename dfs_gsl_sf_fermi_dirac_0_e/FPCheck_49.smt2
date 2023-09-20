(declare-fun a_ack!78 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!78) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!78) ((_ to_fp 11 53) #xc014000000000000)))
(assert (FPCHECK_FDIV_OVERFLOW (CF_exp a_ack!78) #x4018000000000000))

(check-sat)
(exit)
