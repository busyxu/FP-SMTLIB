(declare-fun c_ack!43 () (_ BitVec 64))
(declare-fun a_ack!44 () (_ BitVec 32))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!43) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!44 #x00000000)))
(assert (fp.gt ((_ to_fp 11 53) c_ack!43) ((_ to_fp 11 53) #x40862e42fefa39ef)))

(check-sat)
(exit)
