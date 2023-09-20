(declare-fun x1_ack!1122 () (_ BitVec 64))
(declare-fun x0_ack!1126 () (_ BitVec 64))
(declare-fun y0_ack!1123 () (_ BitVec 64))
(declare-fun x_ack!1124 () (_ BitVec 64))
(declare-fun y_ack!1125 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1126) ((_ to_fp 11 53) x1_ack!1122))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1123) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1124) ((_ to_fp 11 53) x0_ack!1126))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1124) ((_ to_fp 11 53) x1_ack!1122)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1125) ((_ to_fp 11 53) y0_ack!1123))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1125) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1122)
                       ((_ to_fp 11 53) x0_ack!1126))
               ((_ to_fp 11 53) x0_ack!1126))
       ((_ to_fp 11 53) x1_ack!1122)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1122)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1122)
                       ((_ to_fp 11 53) x0_ack!1126)))
       ((_ to_fp 11 53) x0_ack!1126)))
(assert (FPCHECK_FDIV_ZERO
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!1124)
          ((_ to_fp 11 53) x0_ack!1126))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!1122)
          ((_ to_fp 11 53) x0_ack!1126))))

(check-sat)
(exit)
