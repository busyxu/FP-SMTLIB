(declare-fun a_ack!22 () (_ BitVec 32))
(declare-fun b_ack!21 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!22 #x00000000)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!21) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_ACCURACY #x8000000000000000 b_ack!21))

(check-sat)
(exit)
