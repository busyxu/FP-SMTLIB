(declare-fun x1_ack!7633 () (_ BitVec 64))
(declare-fun x0_ack!7640 () (_ BitVec 64))
(declare-fun x2_ack!7634 () (_ BitVec 64))
(declare-fun b_ack!7639 () (_ BitVec 64))
(declare-fun a_ack!7638 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!7635 () (_ BitVec 64))
(declare-fun y1_ack!7636 () (_ BitVec 64))
(declare-fun y2_ack!7637 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7640) ((_ to_fp 11 53) x1_ack!7633)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7633) ((_ to_fp 11 53) x2_ack!7634)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7633)
                       ((_ to_fp 11 53) x0_ack!7640))
               ((_ to_fp 11 53) x0_ack!7640))
       ((_ to_fp 11 53) x1_ack!7633)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7633)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7633)
                       ((_ to_fp 11 53) x0_ack!7640)))
       ((_ to_fp 11 53) x0_ack!7640)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7634)
                       ((_ to_fp 11 53) x1_ack!7633))
               ((_ to_fp 11 53) x1_ack!7633))
       ((_ to_fp 11 53) x2_ack!7634)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7634)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7634)
                       ((_ to_fp 11 53) x1_ack!7633)))
       ((_ to_fp 11 53) x1_ack!7633)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7633)
                    ((_ to_fp 11 53) x0_ack!7640))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7634)
                    ((_ to_fp 11 53) x1_ack!7633))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7638) ((_ to_fp 11 53) b_ack!7639))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7638) ((_ to_fp 11 53) x0_ack!7640))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7639) ((_ to_fp 11 53) x2_ack!7634))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7638) ((_ to_fp 11 53) b_ack!7639))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7638) ((_ to_fp 11 53) x0_ack!7640))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7638) ((_ to_fp 11 53) x1_ack!7633))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7639) ((_ to_fp 11 53) x0_ack!7640))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7639) ((_ to_fp 11 53) x1_ack!7633)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7633) ((_ to_fp 11 53) b_ack!7639))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7633)
                    ((_ to_fp 11 53) x0_ack!7640))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7634)
                    ((_ to_fp 11 53) x1_ack!7633))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!7637)
                           ((_ to_fp 11 53) y1_ack!7636))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7634)
                                   ((_ to_fp 11 53) x1_ack!7633)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!7636)
                           ((_ to_fp 11 53) y0_ack!7635))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7633)
                                   ((_ to_fp 11 53) x0_ack!7640)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7634)
                                   ((_ to_fp 11 53) x1_ack!7633))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7633)
                                   ((_ to_fp 11 53) x0_ack!7640)))))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7633)
                                   ((_ to_fp 11 53) x1_ack!7633))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7633)
                                   ((_ to_fp 11 53) x1_ack!7633)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7639)
                                   ((_ to_fp 11 53) x1_ack!7633))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7639)
                                   ((_ to_fp 11 53) x1_ack!7633))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7634)
                                   ((_ to_fp 11 53) x1_ack!7633))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           a!5)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7633)
                                   ((_ to_fp 11 53) x1_ack!7633))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7639)
                                   ((_ to_fp 11 53) x1_ack!7633))))))
  (FPCHECK_FMUL_ACCURACY a!6 a!7))))))

(check-sat)
(exit)
