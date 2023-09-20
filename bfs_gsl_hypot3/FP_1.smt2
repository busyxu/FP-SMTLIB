(declare-fun c_ack!29 () (_ BitVec 64))
(declare-fun b_ack!28 () (_ BitVec 64))
(declare-fun a_ack!30 () (_ BitVec 64))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!28))
            (fp.abs ((_ to_fp 11 53) c_ack!29)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!30)) (fp.abs ((_ to_fp 11 53) c_ack!29))))

(check-sat)
(exit)
