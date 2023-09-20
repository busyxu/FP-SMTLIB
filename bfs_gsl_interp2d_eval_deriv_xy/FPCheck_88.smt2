(declare-fun x1_ack!1027 () (_ BitVec 64))
(declare-fun x0_ack!1034 () (_ BitVec 64))
(declare-fun y0_ack!1028 () (_ BitVec 64))
(declare-fun x_ack!1032 () (_ BitVec 64))
(declare-fun y_ack!1033 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun z1_ack!1030 () (_ BitVec 64))
(declare-fun z3_ack!1031 () (_ BitVec 64))
(declare-fun z0_ack!1029 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1034) ((_ to_fp 11 53) x1_ack!1027))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1028) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1032) ((_ to_fp 11 53) x0_ack!1034))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!1032) ((_ to_fp 11 53) x1_ack!1027))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1033) ((_ to_fp 11 53) y0_ack!1028))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!1033) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1032) ((_ to_fp 11 53) x0_ack!1034))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1032) ((_ to_fp 11 53) x1_ack!1027)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1033) ((_ to_fp 11 53) y0_ack!1028))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1033) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1027)
                       ((_ to_fp 11 53) x0_ack!1034))
               ((_ to_fp 11 53) x0_ack!1034))
       ((_ to_fp 11 53) x1_ack!1027)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1027)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1027)
                       ((_ to_fp 11 53) x0_ack!1034)))
       ((_ to_fp 11 53) x0_ack!1034)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1028))
               ((_ to_fp 11 53) y0_ack!1028))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1028)))
       ((_ to_fp 11 53) y0_ack!1028)))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) z0_ack!1029)
          ((_ to_fp 11 53) z3_ack!1031))
  z1_ack!1030))

(check-sat)
(exit)
