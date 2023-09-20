(declare-fun a_ack!50 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!50) ((_ to_fp 11 53) #xc000000000000000))))
(assert (FPCHECK_FADD_OVERFLOW #x3ff0000000000000 a_ack!50))

(check-sat)
(exit)
