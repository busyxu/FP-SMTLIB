(declare-fun c_ack!220 () (_ BitVec 64))
(declare-fun a_ack!221 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!220) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!221) ((_ to_fp 11 53) #x40762e42fefa39ef)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!221) ((_ to_fp 11 53) #xc076232bdd7abcd2)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!220))
            ((_ to_fp 11 53) #x5fe9999999999999))))

(check-sat)
(exit)
