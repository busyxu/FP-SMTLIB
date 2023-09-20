(declare-fun x1_ack!2096 () (_ BitVec 64))
(declare-fun x0_ack!2101 () (_ BitVec 64))
(declare-fun y0_ack!2097 () (_ BitVec 64))
(declare-fun x_ack!2099 () (_ BitVec 64))
(declare-fun y_ack!2100 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun z1_ack!2098 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2101) ((_ to_fp 11 53) x1_ack!2096))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2097) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2099) ((_ to_fp 11 53) x0_ack!2101))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!2099) ((_ to_fp 11 53) x1_ack!2096)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2100) ((_ to_fp 11 53) y0_ack!2097))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!2100) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2096)
                       ((_ to_fp 11 53) x0_ack!2101))
               ((_ to_fp 11 53) x0_ack!2101))
       ((_ to_fp 11 53) x1_ack!2096)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2096)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2096)
                       ((_ to_fp 11 53) x0_ack!2101)))
       ((_ to_fp 11 53) x0_ack!2101)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2100)
                       ((_ to_fp 11 53) y0_ack!2097))
               ((_ to_fp 11 53) y0_ack!2097))
       ((_ to_fp 11 53) y_ack!2100)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!2100)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2100)
                       ((_ to_fp 11 53) y0_ack!2097)))
       ((_ to_fp 11 53) y0_ack!2097)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!2099)
                                   ((_ to_fp 11 53) x0_ack!2101))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2096)
                                   ((_ to_fp 11 53) x0_ack!2101))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!2100)
                                   ((_ to_fp 11 53) y0_ack!2097))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!2097))))))
  (FPCHECK_FMUL_UNDERFLOW a!2 z1_ack!2098))))

(check-sat)
(exit)
