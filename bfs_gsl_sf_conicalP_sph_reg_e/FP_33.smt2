(declare-fun c_ack!583 () (_ BitVec 64))
(declare-fun a_ack!584 () (_ BitVec 32))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!583) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!584 #xffffffff)))
(assert (not (= #xffffffff a_ack!584)))
(assert (= #x00000000 a_ack!584))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!583) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!583) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) c_ack!583) ((_ to_fp 11 53) #x3ff0000000000000)))

(check-sat)
(exit)
