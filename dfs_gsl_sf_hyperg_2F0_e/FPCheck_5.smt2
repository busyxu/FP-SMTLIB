(declare-fun c_ack!10 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!11 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) c_ack!10) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FADD_OVERFLOW #x3ff0000000000000 a_ack!11))

(check-sat)
(exit)
