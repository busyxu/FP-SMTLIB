(declare-fun a5_ack!1559 () (_ BitVec 64))
(declare-fun a0_ack!1560 () (_ BitVec 64))
(declare-fun a1_ack!1558 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a5_ack!1559) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!1560))
                           ((_ to_fp 11 53) a5_ack!1559)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!1560))
                           ((_ to_fp 11 53) a5_ack!1559)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!1)))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!1560))
                           ((_ to_fp 11 53) a5_ack!1559)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!1560))
                           ((_ to_fp 11 53) a5_ack!1559)))))
  (fp.lt ((_ to_fp 11 53) #x3ff0000000000000)
         (fp.div roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!1560))
                           ((_ to_fp 11 53) a5_ack!1559)))))
  (fp.lt ((_ to_fp 11 53) #x4010000000000000)
         (fp.div roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!1560))
                           ((_ to_fp 11 53) a5_ack!1559)))))
  (fp.lt ((_ to_fp 11 53) #x4030000000000000)
         (fp.div roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!1560))
                           ((_ to_fp 11 53) a5_ack!1559)))))
  (fp.lt ((_ to_fp 11 53) #x4050000000000000)
         (fp.div roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!1560))
                           ((_ to_fp 11 53) a5_ack!1559)))))
  (fp.lt ((_ to_fp 11 53) #x4070000000000000)
         (fp.div roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!1560))
                           ((_ to_fp 11 53) a5_ack!1559)))))
  (fp.lt ((_ to_fp 11 53) #x4090000000000000)
         (fp.div roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!1560))
                           ((_ to_fp 11 53) a5_ack!1559)))))
  (fp.lt ((_ to_fp 11 53) #x40b0000000000000)
         (fp.div roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!1560))
                           ((_ to_fp 11 53) a5_ack!1559)))))
  (fp.lt ((_ to_fp 11 53) #x40d0000000000000)
         (fp.div roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!1560))
                           ((_ to_fp 11 53) a5_ack!1559)))))
  (fp.lt ((_ to_fp 11 53) #x40f0000000000000)
         (fp.div roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!1560))
                           ((_ to_fp 11 53) a5_ack!1559)))))
  (fp.lt ((_ to_fp 11 53) #x4110000000000000)
         (fp.div roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!1560))
                           ((_ to_fp 11 53) a5_ack!1559)))))
  (fp.lt ((_ to_fp 11 53) #x4130000000000000)
         (fp.div roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!1560))
                           ((_ to_fp 11 53) a5_ack!1559)))))
  (fp.lt ((_ to_fp 11 53) #x4150000000000000)
         (fp.div roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!1560))
                           ((_ to_fp 11 53) a5_ack!1559)))))
  (not (fp.lt ((_ to_fp 11 53) #x4170000000000000)
              (fp.div roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x4000000000000000))))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!1560))
                           ((_ to_fp 11 53) a5_ack!1559)))))
  (not (fp.gt ((_ to_fp 11 53) #x4170000000000000)
              (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x4000000000000000))))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!1560))
                           ((_ to_fp 11 53) a5_ack!1559)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fee666666666666)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x40b0000000000000))))
  (fp.lt (fp.add roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x4170000000000000))
         a!2))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!1558))
                           ((_ to_fp 11 53) a5_ack!1559)))))
  (not (fp.eq (fp.add roundNearestTiesToEven
                      ((_ to_fp 11 53) #x40b0000000000000)
                      a!1)
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!1558))
                           ((_ to_fp 11 53) a5_ack!1559)))))
  (fp.lt ((_ to_fp 11 53) #x3ff0000000000000)
         (fp.div roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x40b0000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!1558))
                           ((_ to_fp 11 53) a5_ack!1559)))))
  (fp.lt ((_ to_fp 11 53) #x4010000000000000)
         (fp.div roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x40b0000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!1558))
                           ((_ to_fp 11 53) a5_ack!1559)))))
  (fp.lt ((_ to_fp 11 53) #x4030000000000000)
         (fp.div roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x40b0000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!1558))
                           ((_ to_fp 11 53) a5_ack!1559)))))
  (fp.lt ((_ to_fp 11 53) #x4050000000000000)
         (fp.div roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x40b0000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!1558))
                           ((_ to_fp 11 53) a5_ack!1559)))))
  (fp.lt ((_ to_fp 11 53) #x4070000000000000)
         (fp.div roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x40b0000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!1558))
                           ((_ to_fp 11 53) a5_ack!1559)))))
  (fp.lt ((_ to_fp 11 53) #x4090000000000000)
         (fp.div roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x40b0000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!1558))
                           ((_ to_fp 11 53) a5_ack!1559)))))
(let ((a!2 (fp.lt ((_ to_fp 11 53) #x40b0000000000000)
                  (fp.div roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x40b0000000000000)
                                  a!1)
                          ((_ to_fp 11 53) #x4000000000000000)))))
  (not a!2))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!1558))
                           ((_ to_fp 11 53) a5_ack!1559)))))
(let ((a!2 (fp.gt ((_ to_fp 11 53) #x40b0000000000000)
                  (fp.mul roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x40b0000000000000)
                                  a!1)
                          ((_ to_fp 11 53) #x4000000000000000)))))
  (not a!2))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!1558))
                           ((_ to_fp 11 53) a5_ack!1559)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fee666666666666)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40b0000000000000)
                                   a!1)))))
  (fp.lt (fp.add roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x40b0000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x40b0000000000000))
         (fp.mul roundNearestTiesToEven
                 a!2
                 ((_ to_fp 11 53) #x4050000000000000))))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x8000000000000000)
                  ((_ to_fp 11 53) a1_ack!1558))
          ((_ to_fp 11 53) a5_ack!1559))
  #x3f90000000000000))

(check-sat)
(exit)
