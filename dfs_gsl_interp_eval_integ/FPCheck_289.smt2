(declare-fun x1_ack!3498 () (_ BitVec 64))
(declare-fun x0_ack!3505 () (_ BitVec 64))
(declare-fun x2_ack!3499 () (_ BitVec 64))
(declare-fun b_ack!3504 () (_ BitVec 64))
(declare-fun a_ack!3503 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!3500 () (_ BitVec 64))
(declare-fun y1_ack!3501 () (_ BitVec 64))
(declare-fun y2_ack!3502 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3505) ((_ to_fp 11 53) x1_ack!3498)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3498) ((_ to_fp 11 53) x2_ack!3499)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3498)
                       ((_ to_fp 11 53) x0_ack!3505))
               ((_ to_fp 11 53) x0_ack!3505))
       ((_ to_fp 11 53) x1_ack!3498)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3498)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3498)
                       ((_ to_fp 11 53) x0_ack!3505)))
       ((_ to_fp 11 53) x0_ack!3505)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3499)
                       ((_ to_fp 11 53) x1_ack!3498))
               ((_ to_fp 11 53) x1_ack!3498))
       ((_ to_fp 11 53) x2_ack!3499)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3499)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3499)
                       ((_ to_fp 11 53) x1_ack!3498)))
       ((_ to_fp 11 53) x1_ack!3498)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3498)
                    ((_ to_fp 11 53) x0_ack!3505))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3499)
                    ((_ to_fp 11 53) x1_ack!3498))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3503) ((_ to_fp 11 53) b_ack!3504))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3503) ((_ to_fp 11 53) x0_ack!3505))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3504) ((_ to_fp 11 53) x2_ack!3499))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3503) ((_ to_fp 11 53) b_ack!3504))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3503) ((_ to_fp 11 53) x0_ack!3505))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3503) ((_ to_fp 11 53) x1_ack!3498))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3504) ((_ to_fp 11 53) x0_ack!3505))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3504) ((_ to_fp 11 53) x1_ack!3498))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3498)
                    ((_ to_fp 11 53) x0_ack!3505))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!3502)
                           ((_ to_fp 11 53) y1_ack!3501))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3499)
                                   ((_ to_fp 11 53) x1_ack!3498)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!3501)
                           ((_ to_fp 11 53) y0_ack!3500))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3498)
                                   ((_ to_fp 11 53) x0_ack!3505)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3499)
                                   ((_ to_fp 11 53) x1_ack!3498))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3498)
                                   ((_ to_fp 11 53) x0_ack!3505))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FDIV_INVALID
    a!4
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3498)
                    ((_ to_fp 11 53) x0_ack!3505)))))))

(check-sat)
(exit)
