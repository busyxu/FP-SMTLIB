(declare-fun x1_ack!3635 () (_ BitVec 64))
(declare-fun x0_ack!3642 () (_ BitVec 64))
(declare-fun x2_ack!3636 () (_ BitVec 64))
(declare-fun b_ack!3641 () (_ BitVec 64))
(declare-fun a_ack!3640 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!3637 () (_ BitVec 64))
(declare-fun y1_ack!3638 () (_ BitVec 64))
(declare-fun y2_ack!3639 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3642) ((_ to_fp 11 53) x1_ack!3635)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3635) ((_ to_fp 11 53) x2_ack!3636)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3635)
                       ((_ to_fp 11 53) x0_ack!3642))
               ((_ to_fp 11 53) x0_ack!3642))
       ((_ to_fp 11 53) x1_ack!3635)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3635)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3635)
                       ((_ to_fp 11 53) x0_ack!3642)))
       ((_ to_fp 11 53) x0_ack!3642)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3636)
                       ((_ to_fp 11 53) x1_ack!3635))
               ((_ to_fp 11 53) x1_ack!3635))
       ((_ to_fp 11 53) x2_ack!3636)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3636)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3636)
                       ((_ to_fp 11 53) x1_ack!3635)))
       ((_ to_fp 11 53) x1_ack!3635)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3635)
                    ((_ to_fp 11 53) x0_ack!3642))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3636)
                    ((_ to_fp 11 53) x1_ack!3635))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3640) ((_ to_fp 11 53) b_ack!3641))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3640) ((_ to_fp 11 53) x0_ack!3642))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3641) ((_ to_fp 11 53) x2_ack!3636))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3640) ((_ to_fp 11 53) b_ack!3641))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3640) ((_ to_fp 11 53) x0_ack!3642))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3640) ((_ to_fp 11 53) x1_ack!3635)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3635) ((_ to_fp 11 53) a_ack!3640))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3641) ((_ to_fp 11 53) x1_ack!3635))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!3641) ((_ to_fp 11 53) x2_ack!3636)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3636)
                    ((_ to_fp 11 53) x1_ack!3635))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!3639)
                           ((_ to_fp 11 53) y1_ack!3638))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3636)
                                   ((_ to_fp 11 53) x1_ack!3635)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!3638)
                           ((_ to_fp 11 53) y0_ack!3637))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3635)
                                   ((_ to_fp 11 53) x0_ack!3642)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3636)
                                   ((_ to_fp 11 53) x1_ack!3635))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3635)
                                   ((_ to_fp 11 53) x0_ack!3642))))))
  (FPCHECK_FSUB_UNDERFLOW
    #x0000000000000000
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3))))

(check-sat)
(exit)
