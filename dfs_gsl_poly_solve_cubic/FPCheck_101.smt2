(declare-fun c_ack!406 () (_ BitVec 64))
(declare-fun b_ack!405 () (_ BitVec 64))
(declare-fun a_ack!407 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_acos ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!407))
                           ((_ to_fp 11 53) a_ack!407))
                   ((_ to_fp 11 53) a_ack!407))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4022000000000000)
                                   ((_ to_fp 11 53) a_ack!407))
                           ((_ to_fp 11 53) b_ack!405)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403b000000000000)
                                   ((_ to_fp 11 53) c_ack!406)))
                   ((_ to_fp 11 53) #x404b000000000000))))
  (fp.eq a!3 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!407)
                                   ((_ to_fp 11 53) a_ack!407))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) b_ack!405)))
                   ((_ to_fp 11 53) #x4022000000000000))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!407))
                           ((_ to_fp 11 53) a_ack!407))
                   ((_ to_fp 11 53) a_ack!407)))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!407)
                           ((_ to_fp 11 53) a_ack!407))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           ((_ to_fp 11 53) b_ack!405)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4022000000000000)
                                   ((_ to_fp 11 53) a_ack!407))
                           ((_ to_fp 11 53) b_ack!405))))
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
                                   ((_ to_fp 11 53) c_ack!406))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403b000000000000)
                                   ((_ to_fp 11 53) c_ack!406))))))
  (not (fp.eq a!4 a!6)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!407))
                           ((_ to_fp 11 53) a_ack!407))
                   ((_ to_fp 11 53) a_ack!407)))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!407)
                                   ((_ to_fp 11 53) a_ack!407))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) b_ack!405)))
                   ((_ to_fp 11 53) #x4022000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4022000000000000)
                                   ((_ to_fp 11 53) a_ack!407))
                           ((_ to_fp 11 53) b_ack!405)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403b000000000000)
                                   ((_ to_fp 11 53) c_ack!406)))
                   ((_ to_fp 11 53) #x404b000000000000))))
  (fp.lt (fp.mul roundNearestTiesToEven a!3 a!3)
         (fp.mul roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!4 a!4)
                 a!4))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!407))
                           ((_ to_fp 11 53) a_ack!407))
                   ((_ to_fp 11 53) a_ack!407))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4022000000000000)
                                   ((_ to_fp 11 53) a_ack!407))
                           ((_ to_fp 11 53) b_ack!405)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403b000000000000)
                                   ((_ to_fp 11 53) c_ack!406)))
                   ((_ to_fp 11 53) #x404b000000000000))))
(let ((a!4 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (ite (fp.geq a!3 ((_ to_fp 11 53) #x0000000000000000))
                  #x00000001
                  #xffffffff))))
  (FPCHECK_FDIV_ACCURACY
    (CF_acos (fp.mul roundNearestTiesToEven
                     a!4
                     ((_ to_fp 11 53) #x0000000000000000)))
    #x4008000000000000))))))

(check-sat)
(exit)
