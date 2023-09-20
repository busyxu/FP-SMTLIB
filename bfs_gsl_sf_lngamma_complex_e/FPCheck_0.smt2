(declare-fun a_ack!0 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.leq ((_ to_fp 11 53) a_ack!0) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (FPCHECK_FSUB_OVERFLOW #x3ff0000000000000 a_ack!0))

(check-sat)
(exit)
