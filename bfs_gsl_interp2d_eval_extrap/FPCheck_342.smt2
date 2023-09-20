(declare-fun x1_ack!3602 () (_ BitVec 64))
(declare-fun x0_ack!3606 () (_ BitVec 64))
(declare-fun y0_ack!3603 () (_ BitVec 64))
(declare-fun x_ack!3604 () (_ BitVec 64))
(declare-fun y_ack!3605 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3606) ((_ to_fp 11 53) x1_ack!3602))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3603) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!3604) ((_ to_fp 11 53) x0_ack!3606)))
(assert (fp.lt ((_ to_fp 11 53) y_ack!3605) ((_ to_fp 11 53) y0_ack!3603)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3602)
                       ((_ to_fp 11 53) x0_ack!3606))
               ((_ to_fp 11 53) x0_ack!3606))
       ((_ to_fp 11 53) x1_ack!3602)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3602)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3602)
                       ((_ to_fp 11 53) x0_ack!3606)))
       ((_ to_fp 11 53) x0_ack!3606)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3605)
                       ((_ to_fp 11 53) y0_ack!3603))
               ((_ to_fp 11 53) y0_ack!3603))
       ((_ to_fp 11 53) y_ack!3605)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3605)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3605)
                       ((_ to_fp 11 53) y0_ack!3603)))
       ((_ to_fp 11 53) y0_ack!3603)))
(assert (FPCHECK_FDIV_ZERO
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!3605)
          ((_ to_fp 11 53) y0_ack!3603))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!3603))))

(check-sat)
(exit)
