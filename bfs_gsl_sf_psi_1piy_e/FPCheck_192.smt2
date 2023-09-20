(declare-fun a_ack!290 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!290))
            ((_ to_fp 11 53) #x408f400000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!290))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) a_ack!290)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!290))
                           (fp.abs ((_ to_fp 11 53) a_ack!290)))
                   (fp.abs ((_ to_fp 11 53) a_ack!290)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) a_ack!290)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) a_ack!290)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!290))
                           (fp.abs ((_ to_fp 11 53) a_ack!290)))
                   (fp.abs ((_ to_fp 11 53) a_ack!290)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) a_ack!290)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!290))
                           (fp.abs ((_ to_fp 11 53) a_ack!290))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f7f07c1f07c1f08)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f95995995995996)
                                   a!1))
                   ((_ to_fp 11 53) #x3f7f07c1f07c1f08))))
  (fp.eq a!2
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3f95995995995996)
                 a!1)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!290))
                           (fp.abs ((_ to_fp 11 53) a_ack!290))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f7f07c1f07c1f08)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f95995995995996)
                                   a!1))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f95995995995996)
                           a!1))))
  (fp.eq a!2 ((_ to_fp 11 53) #x3f7f07c1f07c1f08)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!290))
                           (fp.abs ((_ to_fp 11 53) a_ack!290))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f7f07c1f07c1f08)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f95995995995996)
                                   a!1)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3f71111111111111)
                         a!2)
                 ((_ to_fp 11 53) #x3f71111111111111))
         a!2))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!290))
                           (fp.abs ((_ to_fp 11 53) a_ack!290))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f7f07c1f07c1f08)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f95995995995996)
                                   a!1)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3f71111111111111)
                         a!2)
                 a!2)
         ((_ to_fp 11 53) #x3f71111111111111)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!290))
                           (fp.abs ((_ to_fp 11 53) a_ack!290))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f7f07c1f07c1f08)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f95995995995996)
                                   a!1)))))
  (FPCHECK_FMUL_ACCURACY
    a!1
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x3f71111111111111) a!2)))))

(check-sat)
(exit)
