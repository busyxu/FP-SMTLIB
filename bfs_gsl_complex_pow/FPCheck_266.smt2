(declare-fun x1_ack!1887 () (_ BitVec 64))
(declare-fun y1_ack!1884 () (_ BitVec 64))
(declare-fun x2_ack!1885 () (_ BitVec 64))
(declare-fun y2_ack!1886 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_atan2 ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (fp.eq ((_ to_fp 11 53) x1_ack!1887) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y1_ack!1884) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!1885) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) x2_ack!1885) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y2_ack!1886) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!1887))
             (fp.abs ((_ to_fp 11 53) y1_ack!1884)))))
(assert (fp.eq ((_ to_fp 11 53) x1_ack!1887) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y1_ack!1884) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) y1_ack!1884)))
                   ((_ to_fp 11 53) #x7ff0000000000001))))
  (FPCHECK_FSUB_ACCURACY
    (fp.mul roundNearestTiesToEven a!1 ((_ to_fp 11 53) x2_ack!1885))
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) y2_ack!1886)
            (CF_atan2 y1_ack!1884 x1_ack!1887)))))

(check-sat)
(exit)
