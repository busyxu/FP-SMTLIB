(declare-fun x1_ack!1623 () (_ BitVec 64))
(declare-fun x2_ack!1621 () (_ BitVec 64))
(declare-fun y2_ack!1622 () (_ BitVec 64))
(declare-fun y1_ack!1620 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!1623) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!1621) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) x2_ack!1621) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y2_ack!1622) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!1623))
             (fp.abs ((_ to_fp 11 53) y1_ack!1620)))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x1_ack!1623))
          (fp.abs ((_ to_fp 11 53) y1_ack!1620)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x1_ack!1623))
          (fp.abs ((_ to_fp 11 53) y1_ack!1620)))))

(check-sat)
(exit)
