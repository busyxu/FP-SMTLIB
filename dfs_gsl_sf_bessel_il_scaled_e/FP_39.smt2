(declare-fun b_ack!570 () (_ BitVec 64))
(declare-fun a_ack!571 () (_ BitVec 32))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!570) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!571 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!570) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!571)))
(assert (not (= #x00000001 a_ack!571)))
(assert (= #x00000002 a_ack!571))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!570) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!570))
            ((_ to_fp 11 53) #x2020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!570))
            ((_ to_fp 11 53) #x3fd0000000000000))))

(check-sat)
(exit)
