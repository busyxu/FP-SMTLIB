(declare-fun x1_ack!1013 () (_ BitVec 64))
(declare-fun x0_ack!1021 () (_ BitVec 64))
(declare-fun y0_ack!1014 () (_ BitVec 64))
(declare-fun x_ack!1019 () (_ BitVec 64))
(declare-fun y_ack!1020 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z2_ack!1017 () (_ BitVec 64))
(declare-fun z1_ack!1016 () (_ BitVec 64))
(declare-fun z3_ack!1018 () (_ BitVec 64))
(declare-fun z0_ack!1015 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1021) ((_ to_fp 11 53) x1_ack!1013))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1014) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1019) ((_ to_fp 11 53) x0_ack!1021))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!1019) ((_ to_fp 11 53) x1_ack!1013))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1020) ((_ to_fp 11 53) y0_ack!1014))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!1020) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1019) ((_ to_fp 11 53) x0_ack!1021))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1019) ((_ to_fp 11 53) x1_ack!1013)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1020) ((_ to_fp 11 53) y0_ack!1014))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1020) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1013)
                       ((_ to_fp 11 53) x0_ack!1021))
               ((_ to_fp 11 53) x0_ack!1021))
       ((_ to_fp 11 53) x1_ack!1013)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1013)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1013)
                       ((_ to_fp 11 53) x0_ack!1021)))
       ((_ to_fp 11 53) x0_ack!1021)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1014))
               ((_ to_fp 11 53) y0_ack!1014))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1014)))
       ((_ to_fp 11 53) y0_ack!1014)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1013)
                                   ((_ to_fp 11 53) x0_ack!1021)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!1014)))))
      (a!2 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) z0_ack!1015)
                                   ((_ to_fp 11 53) z3_ack!1018))
                           ((_ to_fp 11 53) z1_ack!1016))
                   ((_ to_fp 11 53) z2_ack!1017))))
  (FPCHECK_FMUL_UNDERFLOW a!1 a!2)))

(check-sat)
(exit)
