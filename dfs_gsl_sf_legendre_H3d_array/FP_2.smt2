(declare-fun c_ack!55 () (_ BitVec 64))
(declare-fun a_ack!56 () (_ BitVec 32))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!55) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!56 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!55) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (= #x00000000 a_ack!56)))

(check-sat)
(exit)
