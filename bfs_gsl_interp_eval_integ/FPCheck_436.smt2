(declare-fun x1_ack!5520 () (_ BitVec 64))
(declare-fun x0_ack!5527 () (_ BitVec 64))
(declare-fun x2_ack!5521 () (_ BitVec 64))
(declare-fun b_ack!5526 () (_ BitVec 64))
(declare-fun a_ack!5525 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!5522 () (_ BitVec 64))
(declare-fun y1_ack!5523 () (_ BitVec 64))
(declare-fun y2_ack!5524 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5527) ((_ to_fp 11 53) x1_ack!5520)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5520) ((_ to_fp 11 53) x2_ack!5521)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5520)
                       ((_ to_fp 11 53) x0_ack!5527))
               ((_ to_fp 11 53) x0_ack!5527))
       ((_ to_fp 11 53) x1_ack!5520)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5520)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5520)
                       ((_ to_fp 11 53) x0_ack!5527)))
       ((_ to_fp 11 53) x0_ack!5527)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5521)
                       ((_ to_fp 11 53) x1_ack!5520))
               ((_ to_fp 11 53) x1_ack!5520))
       ((_ to_fp 11 53) x2_ack!5521)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5521)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5521)
                       ((_ to_fp 11 53) x1_ack!5520)))
       ((_ to_fp 11 53) x1_ack!5520)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5520)
                    ((_ to_fp 11 53) x0_ack!5527))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5521)
                    ((_ to_fp 11 53) x1_ack!5520))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5525) ((_ to_fp 11 53) b_ack!5526))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5525) ((_ to_fp 11 53) x0_ack!5527))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5526) ((_ to_fp 11 53) x2_ack!5521))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5525) ((_ to_fp 11 53) b_ack!5526))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5525) ((_ to_fp 11 53) x0_ack!5527))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5525) ((_ to_fp 11 53) x1_ack!5520))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5526) ((_ to_fp 11 53) x0_ack!5527))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5526) ((_ to_fp 11 53) x1_ack!5520)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5520) ((_ to_fp 11 53) b_ack!5526))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5520)
                    ((_ to_fp 11 53) x0_ack!5527))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!5524)
                           ((_ to_fp 11 53) y1_ack!5523))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5521)
                                   ((_ to_fp 11 53) x1_ack!5520)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!5523)
                           ((_ to_fp 11 53) y0_ack!5522))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5520)
                                   ((_ to_fp 11 53) x0_ack!5527)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5521)
                                   ((_ to_fp 11 53) x1_ack!5520))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5520)
                                   ((_ to_fp 11 53) x0_ack!5527))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5520)
                                   ((_ to_fp 11 53) x0_ack!5527))
                           a!4)
                   ((_ to_fp 11 53) #x4008000000000000))))
  (FPCHECK_FSUB_ACCURACY
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) y1_ack!5523)
                    ((_ to_fp 11 53) y0_ack!5522))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5520)
                    ((_ to_fp 11 53) x0_ack!5527)))
    a!5)))))

(check-sat)
(exit)
