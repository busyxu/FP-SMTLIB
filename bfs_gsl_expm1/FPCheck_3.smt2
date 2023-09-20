(declare-fun a_ack!5 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!5)) ((_ to_fp 11 53) #x3fe62e42fefa39ef)))
(assert (FPCHECK_FDIV_OVERFLOW a_ack!5 #x4000000000000000))

(check-sat)
(exit)
