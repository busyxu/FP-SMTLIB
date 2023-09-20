(declare-fun x1_ack!1052 () (_ BitVec 64))
(declare-fun y1_ack!1049 () (_ BitVec 64))
(declare-fun x2_ack!1050 () (_ BitVec 64))
(declare-fun y2_ack!1051 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.eq ((_ to_fp 11 53) x1_ack!1052) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y1_ack!1049) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) x2_ack!1050) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y2_ack!1051) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!1050) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!1052))
             (fp.abs ((_ to_fp 11 53) y1_ack!1049)))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x1_ack!1052))
          (fp.abs ((_ to_fp 11 53) y1_ack!1049)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x1_ack!1052))
          (fp.abs ((_ to_fp 11 53) y1_ack!1049)))))

(check-sat)
(exit)
