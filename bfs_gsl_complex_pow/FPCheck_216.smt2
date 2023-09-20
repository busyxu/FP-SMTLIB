(declare-fun x1_ack!1487 () (_ BitVec 64))
(declare-fun x2_ack!1485 () (_ BitVec 64))
(declare-fun y2_ack!1486 () (_ BitVec 64))
(declare-fun y1_ack!1484 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!1487) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!1485) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) x2_ack!1485) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y2_ack!1486) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!1487))
        (fp.abs ((_ to_fp 11 53) y1_ack!1484))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) y1_ack!1484))
          (fp.abs ((_ to_fp 11 53) x1_ack!1487)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) y1_ack!1484))
          (fp.abs ((_ to_fp 11 53) x1_ack!1487)))))

(check-sat)
(exit)
