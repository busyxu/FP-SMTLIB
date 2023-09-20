(declare-fun x1_ack!1011 () (_ BitVec 64))
(declare-fun x0_ack!1018 () (_ BitVec 64))
(declare-fun y0_ack!1012 () (_ BitVec 64))
(declare-fun x_ack!1016 () (_ BitVec 64))
(declare-fun y_ack!1017 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z1_ack!1014 () (_ BitVec 64))
(declare-fun z3_ack!1015 () (_ BitVec 64))
(declare-fun z0_ack!1013 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1018) ((_ to_fp 11 53) x1_ack!1011))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1012) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1016) ((_ to_fp 11 53) x0_ack!1018))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!1016) ((_ to_fp 11 53) x1_ack!1011))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1017) ((_ to_fp 11 53) y0_ack!1012))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!1017) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1016) ((_ to_fp 11 53) x0_ack!1018))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1016) ((_ to_fp 11 53) x1_ack!1011)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1017) ((_ to_fp 11 53) y0_ack!1012))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1017) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1011)
                       ((_ to_fp 11 53) x0_ack!1018))
               ((_ to_fp 11 53) x0_ack!1018))
       ((_ to_fp 11 53) x1_ack!1011)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1011)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1011)
                       ((_ to_fp 11 53) x0_ack!1018)))
       ((_ to_fp 11 53) x0_ack!1018)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1012))
               ((_ to_fp 11 53) y0_ack!1012))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1012)))
       ((_ to_fp 11 53) y0_ack!1012)))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) z0_ack!1013)
          ((_ to_fp 11 53) z3_ack!1015))
  z1_ack!1014))

(check-sat)
(exit)
