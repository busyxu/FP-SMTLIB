(declare-fun a_ack!269 () (_ BitVec 32))
(declare-fun b_ack!268 () (_ BitVec 64))
(assert (not (bvslt a_ack!269 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!268) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!268) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!268) ((_ to_fp 11 53) #x3f30000000000000))))

(check-sat)
(exit)
