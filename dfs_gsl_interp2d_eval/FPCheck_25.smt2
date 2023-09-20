(declare-fun x1_ack!242 () (_ BitVec 64))
(declare-fun x0_ack!246 () (_ BitVec 64))
(declare-fun y0_ack!243 () (_ BitVec 64))
(declare-fun x_ack!244 () (_ BitVec 64))
(declare-fun y_ack!245 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!246) ((_ to_fp 11 53) x1_ack!242))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!243) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!244) ((_ to_fp 11 53) x0_ack!246))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!244) ((_ to_fp 11 53) x1_ack!242))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!245) ((_ to_fp 11 53) y0_ack!243))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!245) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!244) ((_ to_fp 11 53) x0_ack!246))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!244) ((_ to_fp 11 53) x1_ack!242))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!245) ((_ to_fp 11 53) y0_ack!243))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!245) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!242)
                       ((_ to_fp 11 53) x0_ack!246))
               ((_ to_fp 11 53) x0_ack!246))
       ((_ to_fp 11 53) x1_ack!242)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!242)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!242)
                       ((_ to_fp 11 53) x0_ack!246)))
       ((_ to_fp 11 53) x0_ack!246)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!243))
               ((_ to_fp 11 53) y0_ack!243))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!243)))
       ((_ to_fp 11 53) y0_ack!243)))
(assert (FPCHECK_FSUB_OVERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!245)
                  ((_ to_fp 11 53) y0_ack!243))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!243)))))

(check-sat)
(exit)
