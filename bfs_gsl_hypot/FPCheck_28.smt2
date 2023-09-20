(declare-fun a_ack!151 () (_ BitVec 64))
(declare-fun b_ack!150 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (let ((a!1 ((_ extract 0 0)
             (ite (fp.isInfinite ((_ to_fp 11 53) a_ack!151)) #x01 #x00))))
  (not (= a!1 #b1))))
(assert (let ((a!1 ((_ extract 0 0)
             (ite (fp.isInfinite ((_ to_fp 11 53) b_ack!150)) #x01 #x00))))
  (not (= a!1 #b1))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!151))
       (fp.abs ((_ to_fp 11 53) b_ack!150))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!151))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!150)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!151))
                           (fp.abs ((_ to_fp 11 53) b_ack!150)))
                   (fp.abs ((_ to_fp 11 53) b_ack!150)))))
  (not (fp.eq a!1 (fp.abs ((_ to_fp 11 53) a_ack!151))))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!151))
                           (fp.abs ((_ to_fp 11 53) b_ack!150))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) a_ack!151))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!151))
                           (fp.abs ((_ to_fp 11 53) b_ack!150))))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) b_ack!150)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!151))
                           (fp.abs ((_ to_fp 11 53) b_ack!150))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!151))
                           (fp.abs ((_ to_fp 11 53) b_ack!150)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!151))
                           (fp.abs ((_ to_fp 11 53) b_ack!150))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!151))
                           (fp.abs ((_ to_fp 11 53) b_ack!150))))))
  (fp.eq a!2
         (fp.div roundNearestTiesToEven
                 (fp.abs ((_ to_fp 11 53) a_ack!151))
                 (fp.abs ((_ to_fp 11 53) b_ack!150)))))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!151))
                           (fp.abs ((_ to_fp 11 53) b_ack!150))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!151))
                           (fp.abs ((_ to_fp 11 53) b_ack!150)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!151))
                           (fp.abs ((_ to_fp 11 53) b_ack!150))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!151))
                           (fp.abs ((_ to_fp 11 53) b_ack!150))))))
  (fp.eq a!2
         (fp.div roundNearestTiesToEven
                 (fp.abs ((_ to_fp 11 53) a_ack!151))
                 (fp.abs ((_ to_fp 11 53) b_ack!150)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!151))
                           (fp.abs ((_ to_fp 11 53) b_ack!150)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!151))
                           (fp.abs ((_ to_fp 11 53) b_ack!150))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!151))
                           (fp.abs ((_ to_fp 11 53) b_ack!150)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!151))
                           (fp.abs ((_ to_fp 11 53) b_ack!150))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FMUL_ACCURACY (fp.abs ((_ to_fp 11 53) b_ack!150)) #x3ff5da95b9b85edb))

(check-sat)
(exit)
