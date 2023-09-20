(declare-fun a_ack!22 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!22))
            ((_ to_fp 11 53) #x4190000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!22))
            ((_ to_fp 11 53) #x4000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!22)) ((_ to_fp 11 53) #x3e50000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) a_ack!22)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!22))
                           (fp.abs ((_ to_fp 11 53) a_ack!22)))
                   (fp.abs ((_ to_fp 11 53) a_ack!22)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) a_ack!22)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) a_ack!22)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!22))
                           (fp.abs ((_ to_fp 11 53) a_ack!22)))
                   (fp.abs ((_ to_fp 11 53) a_ack!22)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) a_ack!22)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!22))
                           (fp.abs ((_ to_fp 11 53) a_ack!22))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x3ff0000000000000))
         (fp.mul roundNearestTiesToEven
                 (fp.abs ((_ to_fp 11 53) a_ack!22))
                 (fp.abs ((_ to_fp 11 53) a_ack!22))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!22))
                           (fp.abs ((_ to_fp 11 53) a_ack!22))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!22))
                           (fp.abs ((_ to_fp 11 53) a_ack!22))))))
  (fp.eq a!2 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!22))
                           (fp.abs ((_ to_fp 11 53) a_ack!22)))
                   ((_ to_fp 11 53) #x40055533356dea3b))))
(let ((a!2 (fp.eq (fp.mul roundNearestTiesToEven
                          a!1
                          ((_ to_fp 11 53) #x40055533356dea3b))
                  (fp.mul roundNearestTiesToEven
                          (fp.abs ((_ to_fp 11 53) a_ack!22))
                          (fp.abs ((_ to_fp 11 53) a_ack!22))))))
  (not a!2))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!22))
                           (fp.abs ((_ to_fp 11 53) a_ack!22)))
                   ((_ to_fp 11 53) #x40055533356dea3b))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!22))
                           (fp.abs ((_ to_fp 11 53) a_ack!22)))
                   ((_ to_fp 11 53) #x40055533356dea3b))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!22))
                           (fp.abs ((_ to_fp 11 53) a_ack!22)))
                   a!1)))
  (fp.eq a!2 ((_ to_fp 11 53) #x40055533356dea3b)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!22))
                           (fp.abs ((_ to_fp 11 53) a_ack!22)))
                   ((_ to_fp 11 53) #x40055533356dea3b))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!22))
                           a!1)
                   (fp.abs ((_ to_fp 11 53) a_ack!22)))))
  (fp.eq a!2 a!1))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!22))
                           (fp.abs ((_ to_fp 11 53) a_ack!22)))
                   ((_ to_fp 11 53) #x40055533356dea3b))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!22))
                           a!1)
                   a!1)))
  (fp.eq a!2 (fp.abs ((_ to_fp 11 53) a_ack!22))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (ite (fp.lt ((_ to_fp 11 53) a_ack!22)
                         ((_ to_fp 11 53) #x0000000000000000))
                  #xffffffff
                  #x00000001))))
  (FPCHECK_FMUL_ACCURACY a!1 #x3fe3656568313bd5)))

(check-sat)
(exit)
