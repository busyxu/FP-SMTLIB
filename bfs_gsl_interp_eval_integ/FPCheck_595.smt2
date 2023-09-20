(declare-fun x1_ack!7478 () (_ BitVec 64))
(declare-fun x0_ack!7485 () (_ BitVec 64))
(declare-fun x2_ack!7479 () (_ BitVec 64))
(declare-fun b_ack!7484 () (_ BitVec 64))
(declare-fun a_ack!7483 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!7480 () (_ BitVec 64))
(declare-fun y1_ack!7481 () (_ BitVec 64))
(declare-fun y2_ack!7482 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7485) ((_ to_fp 11 53) x1_ack!7478)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7478) ((_ to_fp 11 53) x2_ack!7479)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7478)
                       ((_ to_fp 11 53) x0_ack!7485))
               ((_ to_fp 11 53) x0_ack!7485))
       ((_ to_fp 11 53) x1_ack!7478)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7478)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7478)
                       ((_ to_fp 11 53) x0_ack!7485)))
       ((_ to_fp 11 53) x0_ack!7485)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7479)
                       ((_ to_fp 11 53) x1_ack!7478))
               ((_ to_fp 11 53) x1_ack!7478))
       ((_ to_fp 11 53) x2_ack!7479)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7479)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7479)
                       ((_ to_fp 11 53) x1_ack!7478)))
       ((_ to_fp 11 53) x1_ack!7478)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7478)
                    ((_ to_fp 11 53) x0_ack!7485))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7479)
                    ((_ to_fp 11 53) x1_ack!7478))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7483) ((_ to_fp 11 53) b_ack!7484))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7483) ((_ to_fp 11 53) x0_ack!7485))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7484) ((_ to_fp 11 53) x2_ack!7479))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7483) ((_ to_fp 11 53) b_ack!7484))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7483) ((_ to_fp 11 53) x0_ack!7485))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7483) ((_ to_fp 11 53) x1_ack!7478))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7484) ((_ to_fp 11 53) x0_ack!7485))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7484) ((_ to_fp 11 53) x1_ack!7478)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7478) ((_ to_fp 11 53) b_ack!7484))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7478)
                    ((_ to_fp 11 53) x0_ack!7485))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7479)
                    ((_ to_fp 11 53) x1_ack!7478))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!7482)
                           ((_ to_fp 11 53) y1_ack!7481))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7479)
                                   ((_ to_fp 11 53) x1_ack!7478)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!7481)
                           ((_ to_fp 11 53) y0_ack!7480))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7478)
                                   ((_ to_fp 11 53) x0_ack!7485)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7479)
                                   ((_ to_fp 11 53) x1_ack!7478))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7478)
                                   ((_ to_fp 11 53) x0_ack!7485))))))
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
                                   ((_ to_fp 11 53) x2_ack!7479)
                                   ((_ to_fp 11 53) x1_ack!7478))))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fd0000000000000) a!5)
    (fp.add roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7478)
                    ((_ to_fp 11 53) x1_ack!7478))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!7484)
                    ((_ to_fp 11 53) x1_ack!7478))))))))

(check-sat)
(exit)
