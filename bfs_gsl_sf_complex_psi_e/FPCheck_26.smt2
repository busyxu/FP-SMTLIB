(declare-fun a_ack!66 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.geq ((_ to_fp 11 53) a_ack!66) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!66) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!66) ((_ to_fp 11 53) #x4034000000000000))))
(assert (FPCHECK_FADD_OVERFLOW a_ack!66 #x0000000000000000))

(check-sat)
(exit)
