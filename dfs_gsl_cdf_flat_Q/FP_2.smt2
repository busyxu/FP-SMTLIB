(declare-fun a_ack!20 () (_ BitVec 64))
(declare-fun x_ack!22 () (_ BitVec 64))
(declare-fun b_ack!21 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!22) ((_ to_fp 11 53) a_ack!20))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!22) ((_ to_fp 11 53) b_ack!21))))

(check-sat)
(exit)
