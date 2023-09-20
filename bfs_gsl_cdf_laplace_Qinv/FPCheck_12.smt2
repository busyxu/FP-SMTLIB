(declare-fun x_ack!36 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!36) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!36) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!36) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (FPCHECK_FSUB_ACCURACY #x3ff0000000000000 x_ack!36))

(check-sat)
(exit)
