(declare-fun a_ack!801 () (_ BitVec 32))
(declare-fun b_ack!800 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (= #x00000000 a_ack!801))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!800) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!800) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!800) ((_ to_fp 11 53) #xc000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) b_ack!800))
        ((_ to_fp 11 53) #x4000000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!800)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!800))
                           (fp.abs ((_ to_fp 11 53) b_ack!800)))
                   (fp.abs ((_ to_fp 11 53) b_ack!800)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) b_ack!800)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!800)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!800))
                           (fp.abs ((_ to_fp 11 53) b_ack!800)))
                   (fp.abs ((_ to_fp 11 53) b_ack!800)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) b_ack!800)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4020000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!800))
                           (fp.abs ((_ to_fp 11 53) b_ack!800))))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4020000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!800))
                           (fp.abs ((_ to_fp 11 53) b_ack!800))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000)))
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4020000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!800))
                           (fp.abs ((_ to_fp 11 53) b_ack!800))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #xbff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x0000000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FADD_UNDERFLOW
    #x0000000000000000
    (fp.add roundNearestTiesToEven a!4 ((_ to_fp 11 53) #x0000000000000000))))))))

(check-sat)
(exit)
