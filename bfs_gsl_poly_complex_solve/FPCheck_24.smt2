(declare-fun a5_ack!80 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a3_ack!79 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a5_ack!80) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW #x8000000000000000 a3_ack!79))

(check-sat)
(exit)
