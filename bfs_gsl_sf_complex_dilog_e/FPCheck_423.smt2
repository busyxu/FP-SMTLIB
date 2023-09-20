(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun b_ack!1902 () (_ BitVec 64))
(declare-fun a_ack!1903 () (_ BitVec 64))
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1903)
                    (CF_sin b_ack!1902))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1903)
                                   (CF_cos b_ack!1902))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1903)
                                   (CF_cos b_ack!1902)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1903)
                                   (CF_sin b_ack!1902))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1903)
                                   (CF_sin b_ack!1902))))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1903)
                                   (CF_cos b_ack!1902))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1903)
                                   (CF_cos b_ack!1902)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1903)
                                   (CF_sin b_ack!1902))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1903)
                                   (CF_sin b_ack!1902))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000)))
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1903)
                                   (CF_cos b_ack!1902))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1903)
                                   (CF_cos b_ack!1902)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1903)
                                   (CF_sin b_ack!1902))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1903)
                                   (CF_sin b_ack!1902))))))
(let ((a!2 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1903)
                                   (CF_cos b_ack!1902))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1903)
                                   (CF_cos b_ack!1902)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1903)
                                   (CF_sin b_ack!1902))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1903)
                                   (CF_sin b_ack!1902))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1903)
                                   (CF_cos b_ack!1902))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1903)
                                   (CF_cos b_ack!1902)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1903)
                                   (CF_sin b_ack!1902))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1903)
                                   (CF_sin b_ack!1902))))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1903)
                                   (CF_cos b_ack!1902))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1903)
                                   (CF_cos b_ack!1902)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1903)
                                   (CF_sin b_ack!1902))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1903)
                                   (CF_sin b_ack!1902))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1903)
                                   (CF_cos b_ack!1902))
                           a!1)
                   a!1)))
  (not (fp.eq a!2
              (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) a_ack!1903)
                      (CF_cos b_ack!1902)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1903)
                                   (CF_cos b_ack!1902))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1903)
                                   (CF_cos b_ack!1902)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1903)
                                   (CF_sin b_ack!1902))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1903)
                                   (CF_sin b_ack!1902))))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1903)
                                   (CF_cos b_ack!1902))
                           a!1))))
  (not (fp.eq a!2 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1903)
                                   (CF_cos b_ack!1902))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1903)
                                   (CF_cos b_ack!1902)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1903)
                                   (CF_sin b_ack!1902))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1903)
                                   (CF_sin b_ack!1902))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1903)
                           (CF_cos b_ack!1902))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1903)
                                   (CF_cos b_ack!1902))
                           a!1))))
  (fp.eq a!2 a!1))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1903)
                                   (CF_cos b_ack!1902))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1903)
                                   (CF_cos b_ack!1902)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1903)
                                   (CF_sin b_ack!1902))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1903)
                                   (CF_sin b_ack!1902))))))
  (FPCHECK_FDIV_OVERFLOW
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) #x8000000000000000)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1903)
                    (CF_sin b_ack!1902)))
    a!1)))

(check-sat)
(exit)
