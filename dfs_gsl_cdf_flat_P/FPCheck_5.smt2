(declare-fun a_ack!35 () (_ BitVec 64))
(declare-fun x_ack!37 () (_ BitVec 64))
(declare-fun b_ack!36 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!37) ((_ to_fp 11 53) a_ack!35))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!37) ((_ to_fp 11 53) b_ack!36))))
(assert (FPCHECK_FSUB_ACCURACY b_ack!36 a_ack!35))

(check-sat)
(exit)
