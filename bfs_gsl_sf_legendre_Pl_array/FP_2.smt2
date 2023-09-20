(declare-fun a_ack!4 () (_ BitVec 32))
(declare-fun b_ack!3 () (_ BitVec 64))
(assert (not (bvslt a_ack!4 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.gt ((_ to_fp 11 53) b_ack!3) ((_ to_fp 11 53) #x3ff0000000000000)))

(check-sat)
(exit)
