(declare-fun x1_ack!5443 () (_ BitVec 64))
(declare-fun x0_ack!5450 () (_ BitVec 64))
(declare-fun x2_ack!5444 () (_ BitVec 64))
(declare-fun b_ack!5449 () (_ BitVec 64))
(declare-fun a_ack!5448 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y0_ack!5445 () (_ BitVec 64))
(declare-fun y1_ack!5446 () (_ BitVec 64))
(declare-fun y2_ack!5447 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5450) ((_ to_fp 11 53) x1_ack!5443)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5443) ((_ to_fp 11 53) x2_ack!5444)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5443)
                       ((_ to_fp 11 53) x0_ack!5450))
               ((_ to_fp 11 53) x0_ack!5450))
       ((_ to_fp 11 53) x1_ack!5443)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5443)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5443)
                       ((_ to_fp 11 53) x0_ack!5450)))
       ((_ to_fp 11 53) x0_ack!5450)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5444)
                       ((_ to_fp 11 53) x1_ack!5443))
               ((_ to_fp 11 53) x1_ack!5443))
       ((_ to_fp 11 53) x2_ack!5444)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5444)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5444)
                       ((_ to_fp 11 53) x1_ack!5443)))
       ((_ to_fp 11 53) x1_ack!5443)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5443)
                    ((_ to_fp 11 53) x0_ack!5450))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5444)
                    ((_ to_fp 11 53) x1_ack!5443))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5448) ((_ to_fp 11 53) b_ack!5449))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5448) ((_ to_fp 11 53) x0_ack!5450))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5449) ((_ to_fp 11 53) x2_ack!5444))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5448) ((_ to_fp 11 53) b_ack!5449))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5448) ((_ to_fp 11 53) x0_ack!5450))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5448) ((_ to_fp 11 53) x1_ack!5443))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5449) ((_ to_fp 11 53) x0_ack!5450))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5449) ((_ to_fp 11 53) x1_ack!5443)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5443) ((_ to_fp 11 53) b_ack!5449))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5443)
                    ((_ to_fp 11 53) x0_ack!5450))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!5447)
                           ((_ to_fp 11 53) y1_ack!5446))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5444)
                                   ((_ to_fp 11 53) x1_ack!5443)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!5446)
                           ((_ to_fp 11 53) y0_ack!5445))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5443)
                                   ((_ to_fp 11 53) x0_ack!5450)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5444)
                                   ((_ to_fp 11 53) x1_ack!5443))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5443)
                                   ((_ to_fp 11 53) x0_ack!5450))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FDIV_OVERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5443)
                    ((_ to_fp 11 53) x0_ack!5450))
            a!4)
    #x4008000000000000))))

(check-sat)
(exit)
