(declare-fun b_ack!80 () (_ BitVec 32))
(declare-fun a_ack!81 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (bvslt b_ack!80 #x00000000))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!81) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_UNDERFLOW #x3ff0000000000000 a_ack!81))

(check-sat)
(exit)
