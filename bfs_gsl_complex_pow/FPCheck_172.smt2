(declare-fun x1_ack!1156 () (_ BitVec 64))
(declare-fun y1_ack!1153 () (_ BitVec 64))
(declare-fun x2_ack!1154 () (_ BitVec 64))
(declare-fun y2_ack!1155 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.eq ((_ to_fp 11 53) x1_ack!1156) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y1_ack!1153) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!1154) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) x2_ack!1154) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y2_ack!1155) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!1156))
             (fp.abs ((_ to_fp 11 53) y1_ack!1153)))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x1_ack!1156))
          (fp.abs ((_ to_fp 11 53) y1_ack!1153)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x1_ack!1156))
          (fp.abs ((_ to_fp 11 53) y1_ack!1153)))))

(check-sat)
(exit)
