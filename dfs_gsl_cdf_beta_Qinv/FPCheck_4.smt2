(declare-fun x_ack!47 () (_ BitVec 64))
(declare-fun nu1_ack!45 () (_ BitVec 64))
(declare-fun nu2_ack!46 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!47) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!47) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!45) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!46) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!47) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!47) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.gt ((_ to_fp 11 53) x_ack!47) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW #x3ff0000000000000 x_ack!47))

(check-sat)
(exit)
