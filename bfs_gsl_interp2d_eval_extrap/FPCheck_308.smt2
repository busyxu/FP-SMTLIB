(declare-fun x1_ack!3250 () (_ BitVec 64))
(declare-fun x0_ack!3254 () (_ BitVec 64))
(declare-fun y0_ack!3251 () (_ BitVec 64))
(declare-fun x_ack!3252 () (_ BitVec 64))
(declare-fun y_ack!3253 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3254) ((_ to_fp 11 53) x1_ack!3250))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3251) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3252) ((_ to_fp 11 53) x0_ack!3254))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3252) ((_ to_fp 11 53) x1_ack!3250))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3253) ((_ to_fp 11 53) y0_ack!3251))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!3253) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3250)
                       ((_ to_fp 11 53) x0_ack!3254))
               ((_ to_fp 11 53) x0_ack!3254))
       ((_ to_fp 11 53) x1_ack!3250)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3250)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3250)
                       ((_ to_fp 11 53) x0_ack!3254)))
       ((_ to_fp 11 53) x0_ack!3254)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3251))
               ((_ to_fp 11 53) y0_ack!3251))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3251)))
       ((_ to_fp 11 53) y0_ack!3251)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3253)
                       ((_ to_fp 11 53) y0_ack!3251))
               ((_ to_fp 11 53) y0_ack!3251))
       ((_ to_fp 11 53) y_ack!3253)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3253)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3253)
                       ((_ to_fp 11 53) y0_ack!3251)))
       ((_ to_fp 11 53) y0_ack!3251)))
(assert (FPCHECK_FSUB_OVERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!3252)
                  ((_ to_fp 11 53) x0_ack!3254))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!3250)
                  ((_ to_fp 11 53) x0_ack!3254)))))

(check-sat)
(exit)
