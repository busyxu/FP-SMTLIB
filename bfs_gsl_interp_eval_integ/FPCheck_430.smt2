(declare-fun x1_ack!5422 () (_ BitVec 64))
(declare-fun x0_ack!5429 () (_ BitVec 64))
(declare-fun x2_ack!5423 () (_ BitVec 64))
(declare-fun b_ack!5428 () (_ BitVec 64))
(declare-fun a_ack!5427 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!5424 () (_ BitVec 64))
(declare-fun y1_ack!5425 () (_ BitVec 64))
(declare-fun y2_ack!5426 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5429) ((_ to_fp 11 53) x1_ack!5422)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5422) ((_ to_fp 11 53) x2_ack!5423)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5422)
                       ((_ to_fp 11 53) x0_ack!5429))
               ((_ to_fp 11 53) x0_ack!5429))
       ((_ to_fp 11 53) x1_ack!5422)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5422)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5422)
                       ((_ to_fp 11 53) x0_ack!5429)))
       ((_ to_fp 11 53) x0_ack!5429)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5423)
                       ((_ to_fp 11 53) x1_ack!5422))
               ((_ to_fp 11 53) x1_ack!5422))
       ((_ to_fp 11 53) x2_ack!5423)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5423)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5423)
                       ((_ to_fp 11 53) x1_ack!5422)))
       ((_ to_fp 11 53) x1_ack!5422)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5422)
                    ((_ to_fp 11 53) x0_ack!5429))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5423)
                    ((_ to_fp 11 53) x1_ack!5422))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5427) ((_ to_fp 11 53) b_ack!5428))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5427) ((_ to_fp 11 53) x0_ack!5429))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5428) ((_ to_fp 11 53) x2_ack!5423))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5427) ((_ to_fp 11 53) b_ack!5428))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5427) ((_ to_fp 11 53) x0_ack!5429))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5427) ((_ to_fp 11 53) x1_ack!5422))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5428) ((_ to_fp 11 53) x0_ack!5429))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5428) ((_ to_fp 11 53) x1_ack!5422)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5422) ((_ to_fp 11 53) b_ack!5428))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5422)
                    ((_ to_fp 11 53) x0_ack!5429))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!5426)
                           ((_ to_fp 11 53) y1_ack!5425))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5423)
                                   ((_ to_fp 11 53) x1_ack!5422)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!5425)
                           ((_ to_fp 11 53) y0_ack!5424))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5422)
                                   ((_ to_fp 11 53) x0_ack!5429)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5423)
                                   ((_ to_fp 11 53) x1_ack!5422))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5422)
                                   ((_ to_fp 11 53) x0_ack!5429))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FMUL_ACCURACY
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) x1_ack!5422)
            ((_ to_fp 11 53) x0_ack!5429))
    a!4))))

(check-sat)
(exit)
