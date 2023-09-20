(declare-fun x1_ack!217 () (_ BitVec 64))
(declare-fun x0_ack!221 () (_ BitVec 64))
(declare-fun y0_ack!218 () (_ BitVec 64))
(declare-fun x_ack!219 () (_ BitVec 64))
(declare-fun y_ack!220 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!221) ((_ to_fp 11 53) x1_ack!217))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!218) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!219) ((_ to_fp 11 53) x0_ack!221))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!219) ((_ to_fp 11 53) x1_ack!217))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!220) ((_ to_fp 11 53) y0_ack!218))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!220) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!217)
                       ((_ to_fp 11 53) x0_ack!221))
               ((_ to_fp 11 53) x0_ack!221))
       ((_ to_fp 11 53) x1_ack!217)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!217)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!217)
                       ((_ to_fp 11 53) x0_ack!221)))
       ((_ to_fp 11 53) x0_ack!221)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!218))
               ((_ to_fp 11 53) y0_ack!218))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!218)))
       ((_ to_fp 11 53) y0_ack!218)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!220)
                       ((_ to_fp 11 53) y0_ack!218))
               ((_ to_fp 11 53) y0_ack!218))
       ((_ to_fp 11 53) y_ack!220)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!220)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!220)
                       ((_ to_fp 11 53) y0_ack!218)))
       ((_ to_fp 11 53) y0_ack!218)))
(assert (FPCHECK_FSUB_OVERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!219)
                  ((_ to_fp 11 53) x0_ack!221))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!217)
                  ((_ to_fp 11 53) x0_ack!221)))))

(check-sat)
(exit)
