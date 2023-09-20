(declare-fun a_ack!16 () (_ BitVec 32))
(declare-fun b_ack!15 () (_ BitVec 64))
(assert (not (bvslt a_ack!16 #x00000000)))
(assert (not (= #x00000000 a_ack!16)))
(assert (not (= #x00000001 a_ack!16)))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!15)) ((_ to_fp 11 53) #x3ff0000000000000)))

(check-sat)
(exit)
