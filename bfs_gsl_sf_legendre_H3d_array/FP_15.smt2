(declare-fun c_ack!116 () (_ BitVec 64))
(declare-fun a_ack!117 () (_ BitVec 32))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!116) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!117 #x00000000)))
(assert (fp.gt ((_ to_fp 11 53) c_ack!116) ((_ to_fp 11 53) #x40862e42fefa39ef)))
(assert (not (bvsle #x00000000 a_ack!117)))

(check-sat)
(exit)
