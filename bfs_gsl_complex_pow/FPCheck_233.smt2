(declare-fun x1_ack!1619 () (_ BitVec 64))
(declare-fun x2_ack!1617 () (_ BitVec 64))
(declare-fun y2_ack!1618 () (_ BitVec 64))
(declare-fun y1_ack!1616 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!1619) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!1617) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) x2_ack!1617) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y2_ack!1618) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!1619))
             (fp.abs ((_ to_fp 11 53) y1_ack!1616)))))
(assert (FPCHECK_FINVALID_LOG
  (fp.abs ((_ to_fp 11 53) y1_ack!1616))
  (fp.abs ((_ to_fp 11 53) y1_ack!1616))))

(check-sat)
(exit)
