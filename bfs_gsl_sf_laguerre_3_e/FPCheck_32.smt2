(declare-fun a_ack!65 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!65) ((_ to_fp 11 53) #xc000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!65) ((_ to_fp 11 53) #xc008000000000000))))
(assert (FPCHECK_FADD_OVERFLOW #x4000000000000000 a_ack!65))

(check-sat)
(exit)
