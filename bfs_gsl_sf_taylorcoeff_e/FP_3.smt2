(declare-fun b_ack!5 () (_ BitVec 64))
(declare-fun a_ack!6 () (_ BitVec 32))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!6 #x00000000)))
(assert (not (= #x00000000 a_ack!6)))
(assert (not (= #x00000001 a_ack!6)))

(check-sat)
(exit)
