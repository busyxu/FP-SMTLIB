(declare-fun a5_ack!86 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a3_ack!85 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a5_ack!86) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY #x8000000000000000 a3_ack!85))

(check-sat)
(exit)
