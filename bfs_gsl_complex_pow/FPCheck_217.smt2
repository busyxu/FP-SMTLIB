(declare-fun x1_ack!1495 () (_ BitVec 64))
(declare-fun x2_ack!1493 () (_ BitVec 64))
(declare-fun y2_ack!1494 () (_ BitVec 64))
(declare-fun y1_ack!1492 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!1495) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!1493) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) x2_ack!1493) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y2_ack!1494) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!1495))
        (fp.abs ((_ to_fp 11 53) y1_ack!1492))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) y1_ack!1492))
          (fp.abs ((_ to_fp 11 53) x1_ack!1495)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) y1_ack!1492))
          (fp.abs ((_ to_fp 11 53) x1_ack!1495)))))

(check-sat)
(exit)
