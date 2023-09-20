(declare-fun x1_ack!3651 () (_ BitVec 64))
(declare-fun x0_ack!3658 () (_ BitVec 64))
(declare-fun x2_ack!3652 () (_ BitVec 64))
(declare-fun b_ack!3657 () (_ BitVec 64))
(declare-fun a_ack!3656 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!3653 () (_ BitVec 64))
(declare-fun y1_ack!3654 () (_ BitVec 64))
(declare-fun y2_ack!3655 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3658) ((_ to_fp 11 53) x1_ack!3651)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3651) ((_ to_fp 11 53) x2_ack!3652)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3651)
                       ((_ to_fp 11 53) x0_ack!3658))
               ((_ to_fp 11 53) x0_ack!3658))
       ((_ to_fp 11 53) x1_ack!3651)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3651)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3651)
                       ((_ to_fp 11 53) x0_ack!3658)))
       ((_ to_fp 11 53) x0_ack!3658)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3652)
                       ((_ to_fp 11 53) x1_ack!3651))
               ((_ to_fp 11 53) x1_ack!3651))
       ((_ to_fp 11 53) x2_ack!3652)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3652)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3652)
                       ((_ to_fp 11 53) x1_ack!3651)))
       ((_ to_fp 11 53) x1_ack!3651)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3651)
                    ((_ to_fp 11 53) x0_ack!3658))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3652)
                    ((_ to_fp 11 53) x1_ack!3651))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3656) ((_ to_fp 11 53) b_ack!3657))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3656) ((_ to_fp 11 53) x0_ack!3658))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3657) ((_ to_fp 11 53) x2_ack!3652))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3656) ((_ to_fp 11 53) b_ack!3657))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3656) ((_ to_fp 11 53) x0_ack!3658))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3656) ((_ to_fp 11 53) x1_ack!3651)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3651) ((_ to_fp 11 53) a_ack!3656))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3657) ((_ to_fp 11 53) x1_ack!3651))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!3657) ((_ to_fp 11 53) x2_ack!3652)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3652)
                    ((_ to_fp 11 53) x1_ack!3651))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!3655)
                           ((_ to_fp 11 53) y1_ack!3654))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3652)
                                   ((_ to_fp 11 53) x1_ack!3651)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!3654)
                           ((_ to_fp 11 53) y0_ack!3653))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3651)
                                   ((_ to_fp 11 53) x0_ack!3658)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3652)
                                   ((_ to_fp 11 53) x1_ack!3651))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3651)
                                   ((_ to_fp 11 53) x0_ack!3658))))))
  (FPCHECK_FSUB_ACCURACY
    #x0000000000000000
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3))))

(check-sat)
(exit)
