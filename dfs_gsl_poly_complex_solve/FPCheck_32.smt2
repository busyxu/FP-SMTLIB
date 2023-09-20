(declare-fun a5_ack!106 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a4_ack!105 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a5_ack!106) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW #x8000000000000000 a4_ack!105))

(check-sat)
(exit)
