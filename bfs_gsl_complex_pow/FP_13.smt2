(declare-fun x1_ack!449 () (_ BitVec 64))
(declare-fun y1_ack!447 () (_ BitVec 64))
(declare-fun x2_ack!448 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) x1_ack!449) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y1_ack!447) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) x2_ack!448) ((_ to_fp 11 53) #x3ff0000000000000)))

(check-sat)
(exit)
