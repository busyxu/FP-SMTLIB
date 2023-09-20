(declare-fun x1_ack!718 () (_ BitVec 64))
(declare-fun x2_ack!716 () (_ BitVec 64))
(declare-fun y2_ack!717 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!718) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) x2_ack!716) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y2_ack!717) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
