(declare-fun x1_ack!4654 () (_ BitVec 64))
(declare-fun x0_ack!4661 () (_ BitVec 64))
(declare-fun x2_ack!4655 () (_ BitVec 64))
(declare-fun b_ack!4660 () (_ BitVec 64))
(declare-fun a_ack!4659 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!4656 () (_ BitVec 64))
(declare-fun y1_ack!4657 () (_ BitVec 64))
(declare-fun y2_ack!4658 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4661) ((_ to_fp 11 53) x1_ack!4654)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4654) ((_ to_fp 11 53) x2_ack!4655)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4654)
                       ((_ to_fp 11 53) x0_ack!4661))
               ((_ to_fp 11 53) x0_ack!4661))
       ((_ to_fp 11 53) x1_ack!4654)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4654)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4654)
                       ((_ to_fp 11 53) x0_ack!4661)))
       ((_ to_fp 11 53) x0_ack!4661)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4655)
                       ((_ to_fp 11 53) x1_ack!4654))
               ((_ to_fp 11 53) x1_ack!4654))
       ((_ to_fp 11 53) x2_ack!4655)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4655)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4655)
                       ((_ to_fp 11 53) x1_ack!4654)))
       ((_ to_fp 11 53) x1_ack!4654)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4654)
                    ((_ to_fp 11 53) x0_ack!4661))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4655)
                    ((_ to_fp 11 53) x1_ack!4654))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4659) ((_ to_fp 11 53) b_ack!4660))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4659) ((_ to_fp 11 53) x0_ack!4661))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4660) ((_ to_fp 11 53) x2_ack!4655))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4659) ((_ to_fp 11 53) b_ack!4660))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4659) ((_ to_fp 11 53) x0_ack!4661))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!4659) ((_ to_fp 11 53) x1_ack!4654)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!4654) ((_ to_fp 11 53) a_ack!4659))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4660) ((_ to_fp 11 53) x1_ack!4654))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!4660) ((_ to_fp 11 53) x2_ack!4655)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4655)
                    ((_ to_fp 11 53) x1_ack!4654))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!4658)
                           ((_ to_fp 11 53) y1_ack!4657))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4655)
                                   ((_ to_fp 11 53) x1_ack!4654)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!4657)
                           ((_ to_fp 11 53) y0_ack!4656))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4654)
                                   ((_ to_fp 11 53) x0_ack!4661)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4655)
                                   ((_ to_fp 11 53) x1_ack!4654))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4654)
                                   ((_ to_fp 11 53) x0_ack!4661))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FMUL_ACCURACY
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) x2_ack!4655)
            ((_ to_fp 11 53) x1_ack!4654))
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x0000000000000000) a!4)))))

(check-sat)
(exit)
