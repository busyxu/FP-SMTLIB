(declare-fun b_ack!136 () (_ BitVec 64))
(declare-fun a_ack!137 () (_ BitVec 32))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!136) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!137 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!136) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!137)))

(check-sat)
(exit)
