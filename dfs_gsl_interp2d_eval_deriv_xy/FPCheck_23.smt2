(declare-fun x1_ack!242 () (_ BitVec 64))
(declare-fun x0_ack!250 () (_ BitVec 64))
(declare-fun y0_ack!243 () (_ BitVec 64))
(declare-fun x_ack!248 () (_ BitVec 64))
(declare-fun y_ack!249 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z2_ack!246 () (_ BitVec 64))
(declare-fun z1_ack!245 () (_ BitVec 64))
(declare-fun z3_ack!247 () (_ BitVec 64))
(declare-fun z0_ack!244 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!250) ((_ to_fp 11 53) x1_ack!242))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!243) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!248) ((_ to_fp 11 53) x0_ack!250))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!248) ((_ to_fp 11 53) x1_ack!242))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!249) ((_ to_fp 11 53) y0_ack!243))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!249) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!248) ((_ to_fp 11 53) x0_ack!250))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!248) ((_ to_fp 11 53) x1_ack!242))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!249) ((_ to_fp 11 53) y0_ack!243))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!249) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!242)
                       ((_ to_fp 11 53) x0_ack!250))
               ((_ to_fp 11 53) x0_ack!250))
       ((_ to_fp 11 53) x1_ack!242)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!242)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!242)
                       ((_ to_fp 11 53) x0_ack!250)))
       ((_ to_fp 11 53) x0_ack!250)))
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
(assert (FPCHECK_FADD_OVERFLOW
  (fp.sub roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) z0_ack!244)
                  ((_ to_fp 11 53) z3_ack!247))
          ((_ to_fp 11 53) z1_ack!245))
  z2_ack!246))

(check-sat)
(exit)
