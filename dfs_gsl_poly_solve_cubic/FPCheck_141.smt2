(declare-fun c_ack!607 () (_ BitVec 64))
(declare-fun b_ack!606 () (_ BitVec 64))
(declare-fun a_ack!608 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!608))
                           ((_ to_fp 11 53) a_ack!608))
                   ((_ to_fp 11 53) a_ack!608))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4022000000000000)
                                   ((_ to_fp 11 53) a_ack!608))
                           ((_ to_fp 11 53) b_ack!606)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403b000000000000)
                                   ((_ to_fp 11 53) c_ack!607)))
                   ((_ to_fp 11 53) #x404b000000000000))))
  (fp.eq a!3 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!608)
                                   ((_ to_fp 11 53) a_ack!608))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) b_ack!606)))
                   ((_ to_fp 11 53) #x4022000000000000))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!608))
                           ((_ to_fp 11 53) a_ack!608))
                   ((_ to_fp 11 53) a_ack!608)))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!608)
                           ((_ to_fp 11 53) a_ack!608))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           ((_ to_fp 11 53) b_ack!606)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4022000000000000)
                                   ((_ to_fp 11 53) a_ack!608))
                           ((_ to_fp 11 53) b_ack!606))))
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
                                   ((_ to_fp 11 53) c_ack!607))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403b000000000000)
                                   ((_ to_fp 11 53) c_ack!607))))))
  (not (fp.eq a!4 a!6)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!608))
                           ((_ to_fp 11 53) a_ack!608))
                   ((_ to_fp 11 53) a_ack!608)))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!608)
                                   ((_ to_fp 11 53) a_ack!608))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) b_ack!606)))
                   ((_ to_fp 11 53) #x4022000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4022000000000000)
                                   ((_ to_fp 11 53) a_ack!608))
                           ((_ to_fp 11 53) b_ack!606)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403b000000000000)
                                   ((_ to_fp 11 53) c_ack!607)))
                   ((_ to_fp 11 53) #x404b000000000000))))
  (not (fp.lt (fp.mul roundNearestTiesToEven a!3 a!3)
              (fp.mul roundNearestTiesToEven
                      (fp.mul roundNearestTiesToEven a!4 a!4)
                      a!4)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!608))
                           ((_ to_fp 11 53) a_ack!608))
                   ((_ to_fp 11 53) a_ack!608)))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!608)
                                   ((_ to_fp 11 53) a_ack!608))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) b_ack!606)))
                   ((_ to_fp 11 53) #x4022000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4022000000000000)
                                   ((_ to_fp 11 53) a_ack!608))
                           ((_ to_fp 11 53) b_ack!606)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403b000000000000)
                                   ((_ to_fp 11 53) c_ack!607)))
                   ((_ to_fp 11 53) #x404b000000000000))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!3 a!3)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!4 a!4)
                           a!4))))
  (FPCHECK_FINVALID_SQRT a!5 a!5))))))

(check-sat)
(exit)
