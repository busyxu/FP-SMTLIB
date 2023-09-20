(declare-fun b_ack!337 () (_ BitVec 64))
(declare-fun a_ack!338 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!337) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!338)
                                   ((_ to_fp 11 53) a_ack!338))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!337)
                                   ((_ to_fp 11 53) b_ack!337)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3cb0000000000000)))))
(assert (fp.lt (fp.add roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!338)
                       ((_ to_fp 11 53) a_ack!338))
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!337)
                       ((_ to_fp 11 53) b_ack!337)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!338) ((_ to_fp 11 53) #x3fe76c8b43958106))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!338)
                           ((_ to_fp 11 53) #x0020000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!338)
                                   ((_ to_fp 11 53) #x0020000000000000)))
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!337)
                                   ((_ to_fp 11 53) #x0020000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!337)
                                   ((_ to_fp 11 53) #x0020000000000000)))))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!337)
                                   ((_ to_fp 11 53) #x0020000000000000)))
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!337)
                                   ((_ to_fp 11 53) #x0020000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!338)
                                   ((_ to_fp 11 53) #x0020000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!338)
                                   ((_ to_fp 11 53) #x0020000000000000))
                           a!2)))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!337)
                                   ((_ to_fp 11 53) #x0020000000000000))
                           a!4))))
  (FPCHECK_FADD_OVERFLOW
    (fp.mul roundNearestTiesToEven a!3 a!3)
    (fp.mul roundNearestTiesToEven a!5 a!5))))))

(check-sat)
(exit)
