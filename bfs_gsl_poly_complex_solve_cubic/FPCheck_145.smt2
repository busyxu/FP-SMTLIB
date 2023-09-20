(declare-fun c_ack!685 () (_ BitVec 64))
(declare-fun b_ack!684 () (_ BitVec 64))
(declare-fun a_ack!686 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!686))
                           ((_ to_fp 11 53) a_ack!686))
                   ((_ to_fp 11 53) a_ack!686))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4022000000000000)
                                   ((_ to_fp 11 53) a_ack!686))
                           ((_ to_fp 11 53) b_ack!684)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403b000000000000)
                                   ((_ to_fp 11 53) c_ack!685)))
                   ((_ to_fp 11 53) #x404b000000000000))))
  (fp.eq a!3 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!686)
                                   ((_ to_fp 11 53) a_ack!686))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) b_ack!684)))
                   ((_ to_fp 11 53) #x4022000000000000))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!686))
                           ((_ to_fp 11 53) a_ack!686))
                   ((_ to_fp 11 53) a_ack!686)))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!686)
                           ((_ to_fp 11 53) a_ack!686))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           ((_ to_fp 11 53) b_ack!684)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4022000000000000)
                                   ((_ to_fp 11 53) a_ack!686))
                           ((_ to_fp 11 53) b_ack!684))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40a6c80000000000)
                                   a!5)
                           a!5)
                   a!5)))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4086c80000000000)
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403b000000000000)
                                   ((_ to_fp 11 53) c_ack!685))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403b000000000000)
                                   ((_ to_fp 11 53) c_ack!685))))))
  (not (fp.eq a!4 a!6)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!686))
                           ((_ to_fp 11 53) a_ack!686))
                   ((_ to_fp 11 53) a_ack!686)))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!686)
                                   ((_ to_fp 11 53) a_ack!686))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) b_ack!684)))
                   ((_ to_fp 11 53) #x4022000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4022000000000000)
                                   ((_ to_fp 11 53) a_ack!686))
                           ((_ to_fp 11 53) b_ack!684)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403b000000000000)
                                   ((_ to_fp 11 53) c_ack!685)))
                   ((_ to_fp 11 53) #x404b000000000000))))
  (not (fp.lt (fp.mul roundNearestTiesToEven a!3 a!3)
              (fp.mul roundNearestTiesToEven
                      (fp.mul roundNearestTiesToEven a!4 a!4)
                      a!4)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!686))
                           ((_ to_fp 11 53) a_ack!686))
                   ((_ to_fp 11 53) a_ack!686))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4022000000000000)
                                   ((_ to_fp 11 53) a_ack!686))
                           ((_ to_fp 11 53) b_ack!684)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403b000000000000)
                                   ((_ to_fp 11 53) c_ack!685)))
                   ((_ to_fp 11 53) #x404b000000000000))))
  (FPCHECK_FADD_ACCURACY (fp.abs a!3) #x1ee16b26c7f83152)))))

(check-sat)
(exit)
