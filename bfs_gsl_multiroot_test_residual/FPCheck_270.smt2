(declare-fun x0_ack!674 () (_ BitVec 64))
(declare-fun x1_ack!673 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.eq (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3e50000000000000)
               (fp.abs ((_ to_fp 11 53) x0_ack!674)))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!674)
                                   ((_ to_fp 11 53) #x3e50000000000000))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x0_ack!674))))))
  (not (fp.eq (fp.div roundNearestTiesToEven
                      a!2
                      ((_ to_fp 11 53) #x3e50000000000000))
              ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3e50000000000000)
                          (fp.abs ((_ to_fp 11 53) x1_ack!673)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x1_ack!673)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x1_ack!673))))))
  (fp.eq (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) x1_ack!673))
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3e50000000000000)
                 (fp.abs ((_ to_fp 11 53) x1_ack!673))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x1_ack!673)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x1_ack!673))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x1_ack!673))))))
  (fp.eq a!2 ((_ to_fp 11 53) x1_ack!673)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) x0_ack!674)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven a!1 a!1)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x1_ack!673))))))
  (not (not (fp.eq a!2 ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x1_ack!673)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x1_ack!673)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!673)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!674)
                                   ((_ to_fp 11 53) x0_ack!674))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x0_ack!674)
                                   ((_ to_fp 11 53) x0_ack!674))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven a!2 a!3)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x1_ack!673))))))
  (not (fp.eq a!4 ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) x0_ack!674)))))
  (FPCHECK_FADD_OVERFLOW
    #x0000000000000000
    (fp.mul roundNearestTiesToEven a!1 a!1))))

(check-sat)
(exit)
