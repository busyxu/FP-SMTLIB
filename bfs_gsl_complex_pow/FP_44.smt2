(declare-fun x1_ack!1583 () (_ BitVec 64))
(declare-fun x2_ack!1581 () (_ BitVec 64))
(declare-fun y2_ack!1582 () (_ BitVec 64))
(declare-fun y1_ack!1580 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!1583) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!1581) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) x2_ack!1581) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y2_ack!1582) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!1583))
             (fp.abs ((_ to_fp 11 53) y1_ack!1580)))))

(check-sat)
(exit)
