(declare-fun x1_ack!229 () (_ BitVec 64))
(declare-fun x0_ack!236 () (_ BitVec 64))
(declare-fun y0_ack!230 () (_ BitVec 64))
(declare-fun x_ack!234 () (_ BitVec 64))
(declare-fun y_ack!235 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z1_ack!232 () (_ BitVec 64))
(declare-fun z3_ack!233 () (_ BitVec 64))
(declare-fun z0_ack!231 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!236) ((_ to_fp 11 53) x1_ack!229))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!230) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!234) ((_ to_fp 11 53) x0_ack!236))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!234) ((_ to_fp 11 53) x1_ack!229))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!235) ((_ to_fp 11 53) y0_ack!230))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!235) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!234) ((_ to_fp 11 53) x0_ack!236))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!234) ((_ to_fp 11 53) x1_ack!229))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!235) ((_ to_fp 11 53) y0_ack!230))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!235) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!229)
                       ((_ to_fp 11 53) x0_ack!236))
               ((_ to_fp 11 53) x0_ack!236))
       ((_ to_fp 11 53) x1_ack!229)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!229)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!229)
                       ((_ to_fp 11 53) x0_ack!236)))
       ((_ to_fp 11 53) x0_ack!236)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!230))
               ((_ to_fp 11 53) y0_ack!230))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!230)))
       ((_ to_fp 11 53) y0_ack!230)))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) z0_ack!231)
          ((_ to_fp 11 53) z3_ack!233))
  z1_ack!232))

(check-sat)
(exit)
