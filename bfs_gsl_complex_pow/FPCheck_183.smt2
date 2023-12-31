(declare-fun x1_ack!1228 () (_ BitVec 64))
(declare-fun y1_ack!1225 () (_ BitVec 64))
(declare-fun x2_ack!1226 () (_ BitVec 64))
(declare-fun y2_ack!1227 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_atan2 ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (fp.eq ((_ to_fp 11 53) x1_ack!1228) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y1_ack!1225) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!1226) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) x2_ack!1226) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y2_ack!1227) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!1228))
             (fp.abs ((_ to_fp 11 53) y1_ack!1225)))))
(assert (fp.eq ((_ to_fp 11 53) x1_ack!1228) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y1_ack!1225) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY y2_ack!1227 (CF_atan2 y1_ack!1225 x1_ack!1228)))

(check-sat)
(exit)
