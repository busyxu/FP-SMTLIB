(declare-fun x1_ack!2217 () (_ BitVec 64))
(declare-fun x0_ack!2222 () (_ BitVec 64))
(declare-fun y0_ack!2218 () (_ BitVec 64))
(declare-fun x_ack!2220 () (_ BitVec 64))
(declare-fun y_ack!2221 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun z2_ack!2219 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2222) ((_ to_fp 11 53) x1_ack!2217))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2218) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2220) ((_ to_fp 11 53) x0_ack!2222))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!2220) ((_ to_fp 11 53) x1_ack!2217)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2221) ((_ to_fp 11 53) y0_ack!2218))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!2221) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2217)
                       ((_ to_fp 11 53) x0_ack!2222))
               ((_ to_fp 11 53) x0_ack!2222))
       ((_ to_fp 11 53) x1_ack!2217)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2217)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2217)
                       ((_ to_fp 11 53) x0_ack!2222)))
       ((_ to_fp 11 53) x0_ack!2222)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2221)
                       ((_ to_fp 11 53) y0_ack!2218))
               ((_ to_fp 11 53) y0_ack!2218))
       ((_ to_fp 11 53) y_ack!2221)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!2221)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2221)
                       ((_ to_fp 11 53) y0_ack!2218)))
       ((_ to_fp 11 53) y0_ack!2218)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!2220)
                                   ((_ to_fp 11 53) x0_ack!2222))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2217)
                                   ((_ to_fp 11 53) x0_ack!2222)))
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!2221)
                                   ((_ to_fp 11 53) y0_ack!2218))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!2218))))))
  (FPCHECK_FMUL_UNDERFLOW a!1 z2_ack!2219)))

(check-sat)
(exit)
