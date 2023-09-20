(declare-fun nu2_ack!42 () (_ BitVec 64))
(declare-fun x_ack!43 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x_ack!43) ((_ to_fp 11 53) nu2_ack!42)))

(check-sat)
(exit)
