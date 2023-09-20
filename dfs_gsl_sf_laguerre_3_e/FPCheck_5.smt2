(declare-fun a_ack!13 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun b_ack!12 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!13) ((_ to_fp 11 53) #xc000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) a_ack!13) ((_ to_fp 11 53) #xc008000000000000)))
(assert (FPCHECK_FSUB_ACCURACY #x8000000000000000 b_ack!12))

(check-sat)
(exit)
