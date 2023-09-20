(declare-fun c_ack!43 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) c_ack!43) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
