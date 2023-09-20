(declare-fun x1_ack!343 () (_ BitVec 64))
(declare-fun x0_ack!347 () (_ BitVec 64))
(declare-fun y0_ack!344 () (_ BitVec 64))
(declare-fun x_ack!345 () (_ BitVec 64))
(declare-fun y_ack!346 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!347) ((_ to_fp 11 53) x1_ack!343))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!344) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!345) ((_ to_fp 11 53) x0_ack!347))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!345) ((_ to_fp 11 53) x1_ack!343))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!346) ((_ to_fp 11 53) y0_ack!344))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!346) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!345) ((_ to_fp 11 53) x0_ack!347))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!345) ((_ to_fp 11 53) x1_ack!343))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!346) ((_ to_fp 11 53) y0_ack!344))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!346) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!343)
                       ((_ to_fp 11 53) x0_ack!347))
               ((_ to_fp 11 53) x0_ack!347))
       ((_ to_fp 11 53) x1_ack!343)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!343)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!343)
                       ((_ to_fp 11 53) x0_ack!347)))
       ((_ to_fp 11 53) x0_ack!347)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!344))
               ((_ to_fp 11 53) y0_ack!344))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!344)))
       ((_ to_fp 11 53) y0_ack!344)))
(assert (FPCHECK_FSUB_OVERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!346)
                  ((_ to_fp 11 53) y0_ack!344))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!344)))))

(check-sat)
(exit)
