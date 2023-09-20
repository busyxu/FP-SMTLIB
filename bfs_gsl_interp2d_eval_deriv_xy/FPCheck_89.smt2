(declare-fun x1_ack!1043 () (_ BitVec 64))
(declare-fun x0_ack!1050 () (_ BitVec 64))
(declare-fun y0_ack!1044 () (_ BitVec 64))
(declare-fun x_ack!1048 () (_ BitVec 64))
(declare-fun y_ack!1049 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z1_ack!1046 () (_ BitVec 64))
(declare-fun z3_ack!1047 () (_ BitVec 64))
(declare-fun z0_ack!1045 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1050) ((_ to_fp 11 53) x1_ack!1043))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1044) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1048) ((_ to_fp 11 53) x0_ack!1050))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!1048) ((_ to_fp 11 53) x1_ack!1043))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1049) ((_ to_fp 11 53) y0_ack!1044))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!1049) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1048) ((_ to_fp 11 53) x0_ack!1050))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1048) ((_ to_fp 11 53) x1_ack!1043)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1049) ((_ to_fp 11 53) y0_ack!1044))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1049) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1043)
                       ((_ to_fp 11 53) x0_ack!1050))
               ((_ to_fp 11 53) x0_ack!1050))
       ((_ to_fp 11 53) x1_ack!1043)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1043)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1043)
                       ((_ to_fp 11 53) x0_ack!1050)))
       ((_ to_fp 11 53) x0_ack!1050)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1044))
               ((_ to_fp 11 53) y0_ack!1044))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1044)))
       ((_ to_fp 11 53) y0_ack!1044)))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) z0_ack!1045)
          ((_ to_fp 11 53) z3_ack!1047))
  z1_ack!1046))

(check-sat)
(exit)
