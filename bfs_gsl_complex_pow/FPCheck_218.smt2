(declare-fun x1_ack!1503 () (_ BitVec 64))
(declare-fun x2_ack!1501 () (_ BitVec 64))
(declare-fun y2_ack!1502 () (_ BitVec 64))
(declare-fun y1_ack!1500 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!1503) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!1501) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) x2_ack!1501) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y2_ack!1502) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!1503))
        (fp.abs ((_ to_fp 11 53) y1_ack!1500))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) y1_ack!1500))
          (fp.abs ((_ to_fp 11 53) x1_ack!1503)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) y1_ack!1500))
          (fp.abs ((_ to_fp 11 53) x1_ack!1503)))))

(check-sat)
(exit)
