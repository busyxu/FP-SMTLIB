(declare-fun x1_ack!1863 () (_ BitVec 64))
(declare-fun y1_ack!1860 () (_ BitVec 64))
(declare-fun x2_ack!1861 () (_ BitVec 64))
(declare-fun y2_ack!1862 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) x1_ack!1863) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y1_ack!1860) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) x2_ack!1861) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y2_ack!1862) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!1861) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!1863))
             (fp.abs ((_ to_fp 11 53) y1_ack!1860)))))
(assert (fp.eq ((_ to_fp 11 53) x1_ack!1863) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) y1_ack!1860) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
