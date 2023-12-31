(declare-fun x1_ack!1767 () (_ BitVec 64))
(declare-fun y1_ack!1764 () (_ BitVec 64))
(declare-fun x2_ack!1765 () (_ BitVec 64))
(declare-fun y2_ack!1766 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (fp.eq ((_ to_fp 11 53) x1_ack!1767) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y1_ack!1764) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) x2_ack!1765) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y2_ack!1766) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!1765) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!1767))
             (fp.abs ((_ to_fp 11 53) y1_ack!1764)))))
(assert (fp.eq ((_ to_fp 11 53) x1_ack!1767) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y1_ack!1764) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) y1_ack!1764)))
                   ((_ to_fp 11 53) #x7ff0000000000001))))
  (FPCHECK_FMUL_UNDERFLOW y2_ack!1766 a!1)))

(check-sat)
(exit)
