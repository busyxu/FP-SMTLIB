(declare-fun x1_ack!1591 () (_ BitVec 64))
(declare-fun x2_ack!1589 () (_ BitVec 64))
(declare-fun y2_ack!1590 () (_ BitVec 64))
(declare-fun y1_ack!1588 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!1591) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!1589) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) x2_ack!1589) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y2_ack!1590) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!1591))
             (fp.abs ((_ to_fp 11 53) y1_ack!1588)))))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.abs ((_ to_fp 11 53) x1_ack!1591))
  (fp.abs ((_ to_fp 11 53) y1_ack!1588))))

(check-sat)
(exit)
