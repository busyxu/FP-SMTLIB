(declare-fun x1_ack!3587 () (_ BitVec 64))
(declare-fun x0_ack!3591 () (_ BitVec 64))
(declare-fun y0_ack!3588 () (_ BitVec 64))
(declare-fun x_ack!3589 () (_ BitVec 64))
(declare-fun y_ack!3590 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3591) ((_ to_fp 11 53) x1_ack!3587))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3588) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!3589) ((_ to_fp 11 53) x0_ack!3591)))
(assert (fp.lt ((_ to_fp 11 53) y_ack!3590) ((_ to_fp 11 53) y0_ack!3588)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3587)
                       ((_ to_fp 11 53) x0_ack!3591))
               ((_ to_fp 11 53) x0_ack!3591))
       ((_ to_fp 11 53) x1_ack!3587)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3587)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3587)
                       ((_ to_fp 11 53) x0_ack!3591)))
       ((_ to_fp 11 53) x0_ack!3591)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3590)
                       ((_ to_fp 11 53) y0_ack!3588))
               ((_ to_fp 11 53) y0_ack!3588))
       ((_ to_fp 11 53) y_ack!3590)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3590)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3590)
                       ((_ to_fp 11 53) y0_ack!3588)))
       ((_ to_fp 11 53) y0_ack!3588)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!3590)
          ((_ to_fp 11 53) y0_ack!3588))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!3588))))

(check-sat)
(exit)
