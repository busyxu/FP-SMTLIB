(declare-fun x1_ack!358 () (_ BitVec 64))
(declare-fun x0_ack!362 () (_ BitVec 64))
(declare-fun y0_ack!359 () (_ BitVec 64))
(declare-fun x_ack!360 () (_ BitVec 64))
(declare-fun y_ack!361 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!362) ((_ to_fp 11 53) x1_ack!358))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!359) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!360) ((_ to_fp 11 53) x0_ack!362))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!360) ((_ to_fp 11 53) x1_ack!358))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!361) ((_ to_fp 11 53) y0_ack!359))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!361) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!358)
                       ((_ to_fp 11 53) x0_ack!362))
               ((_ to_fp 11 53) x0_ack!362))
       ((_ to_fp 11 53) x1_ack!358)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!358)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!358)
                       ((_ to_fp 11 53) x0_ack!362)))
       ((_ to_fp 11 53) x0_ack!362)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!359))
               ((_ to_fp 11 53) y0_ack!359))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!359)))
       ((_ to_fp 11 53) y0_ack!359)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!361)
                       ((_ to_fp 11 53) y0_ack!359))
               ((_ to_fp 11 53) y0_ack!359))
       ((_ to_fp 11 53) y_ack!361)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!361)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!361)
                       ((_ to_fp 11 53) y0_ack!359)))
       ((_ to_fp 11 53) y0_ack!359)))
(assert (FPCHECK_FSUB_ACCURACY
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!361)
                  ((_ to_fp 11 53) y0_ack!359))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!359)))))

(check-sat)
(exit)
