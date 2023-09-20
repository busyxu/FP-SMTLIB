(declare-fun a_ack!31 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!31) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!31) ((_ to_fp 11 53) #x3e66a09e667f3bcd))))

(check-sat)
(exit)
