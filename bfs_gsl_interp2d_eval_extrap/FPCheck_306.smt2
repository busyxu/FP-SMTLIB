(declare-fun x1_ack!3235 () (_ BitVec 64))
(declare-fun x0_ack!3239 () (_ BitVec 64))
(declare-fun y0_ack!3236 () (_ BitVec 64))
(declare-fun x_ack!3237 () (_ BitVec 64))
(declare-fun y_ack!3238 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3239) ((_ to_fp 11 53) x1_ack!3235))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3236) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3237) ((_ to_fp 11 53) x0_ack!3239))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3237) ((_ to_fp 11 53) x1_ack!3235))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3238) ((_ to_fp 11 53) y0_ack!3236))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!3238) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3235)
                       ((_ to_fp 11 53) x0_ack!3239))
               ((_ to_fp 11 53) x0_ack!3239))
       ((_ to_fp 11 53) x1_ack!3235)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3235)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3235)
                       ((_ to_fp 11 53) x0_ack!3239)))
       ((_ to_fp 11 53) x0_ack!3239)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3236))
               ((_ to_fp 11 53) y0_ack!3236))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3236)))
       ((_ to_fp 11 53) y0_ack!3236)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3238)
                       ((_ to_fp 11 53) y0_ack!3236))
               ((_ to_fp 11 53) y0_ack!3236))
       ((_ to_fp 11 53) y_ack!3238)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3238)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3238)
                       ((_ to_fp 11 53) y0_ack!3236)))
       ((_ to_fp 11 53) y0_ack!3236)))
(assert (FPCHECK_FDIV_INVALID
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!3238)
          ((_ to_fp 11 53) y0_ack!3236))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!3236))))

(check-sat)
(exit)
