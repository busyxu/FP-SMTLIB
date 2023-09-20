(declare-fun x1_ack!113 () (_ BitVec 64))
(declare-fun y1_ack!111 () (_ BitVec 64))
(declare-fun x2_ack!112 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) x1_ack!113) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) y1_ack!111) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!112) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
