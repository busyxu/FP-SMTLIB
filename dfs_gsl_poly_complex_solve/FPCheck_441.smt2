(declare-fun a5_ack!3253 () (_ BitVec 64))
(declare-fun a0_ack!3254 () (_ BitVec 64))
(declare-fun a1_ack!3250 () (_ BitVec 64))
(declare-fun a2_ack!3251 () (_ BitVec 64))
(declare-fun a3_ack!3252 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a5_ack!3253) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!3254))
                           ((_ to_fp 11 53) a5_ack!3253)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!3254))
                           ((_ to_fp 11 53) a5_ack!3253)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!1)))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!3254))
                           ((_ to_fp 11 53) a5_ack!3253)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!3254))
                           ((_ to_fp 11 53) a5_ack!3253)))))
  (not (fp.lt ((_ to_fp 11 53) #x3ff0000000000000)
              (fp.div roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x4000000000000000))))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!3254))
                           ((_ to_fp 11 53) a5_ack!3253)))))
  (fp.gt ((_ to_fp 11 53) #x3ff0000000000000)
         (fp.mul roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!3254))
                           ((_ to_fp 11 53) a5_ack!3253)))))
  (not (fp.gt ((_ to_fp 11 53) #x3fd0000000000000)
              (fp.mul roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x4000000000000000))))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!3254))
                           ((_ to_fp 11 53) a5_ack!3253)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fee666666666666)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x3fe0000000000000))))
  (not (fp.lt (fp.add roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3fd0000000000000))
              a!2)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253)))))
  (not (fp.eq (fp.add roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3ff0000000000000)
                      a!1)
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253)))))
  (fp.lt ((_ to_fp 11 53) #x3ff0000000000000)
         (fp.div roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253)))))
  (fp.lt ((_ to_fp 11 53) #x4010000000000000)
         (fp.div roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253)))))
  (fp.lt ((_ to_fp 11 53) #x4030000000000000)
         (fp.div roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253)))))
  (fp.lt ((_ to_fp 11 53) #x4050000000000000)
         (fp.div roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253)))))
  (fp.lt ((_ to_fp 11 53) #x4070000000000000)
         (fp.div roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253)))))
  (fp.lt ((_ to_fp 11 53) #x4090000000000000)
         (fp.div roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253)))))
  (fp.lt ((_ to_fp 11 53) #x40b0000000000000)
         (fp.div roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253)))))
  (fp.lt ((_ to_fp 11 53) #x40d0000000000000)
         (fp.div roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253)))))
  (fp.lt ((_ to_fp 11 53) #x40f0000000000000)
         (fp.div roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253)))))
  (fp.lt ((_ to_fp 11 53) #x4110000000000000)
         (fp.div roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253)))))
(let ((a!2 (fp.lt ((_ to_fp 11 53) #x4130000000000000)
                  (fp.div roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  a!1)
                          ((_ to_fp 11 53) #x4000000000000000)))))
  (not a!2))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253)))))
(let ((a!2 (fp.gt ((_ to_fp 11 53) #x4130000000000000)
                  (fp.mul roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  a!1)
                          ((_ to_fp 11 53) #x4000000000000000)))))
  (not a!2))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fee666666666666)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
  (fp.lt (fp.add roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x4130000000000000))
         (fp.mul roundNearestTiesToEven
                 a!2
                 ((_ to_fp 11 53) #x4090000000000000))))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a2_ack!3251))
                           ((_ to_fp 11 53) a5_ack!3253)))))
  (not (fp.eq (fp.add roundNearestTiesToEven
                      ((_ to_fp 11 53) #x4090000000000000)
                      a!1)
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a2_ack!3251))
                           ((_ to_fp 11 53) a5_ack!3253)))))
  (fp.lt ((_ to_fp 11 53) #x3ff0000000000000)
         (fp.div roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x4090000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a2_ack!3251))
                           ((_ to_fp 11 53) a5_ack!3253)))))
  (fp.lt ((_ to_fp 11 53) #x4010000000000000)
         (fp.div roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x4090000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a2_ack!3251))
                           ((_ to_fp 11 53) a5_ack!3253)))))
  (fp.lt ((_ to_fp 11 53) #x4030000000000000)
         (fp.div roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x4090000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a2_ack!3251))
                           ((_ to_fp 11 53) a5_ack!3253)))))
  (fp.lt ((_ to_fp 11 53) #x4050000000000000)
         (fp.div roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x4090000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a2_ack!3251))
                           ((_ to_fp 11 53) a5_ack!3253)))))
  (fp.lt ((_ to_fp 11 53) #x4070000000000000)
         (fp.div roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x4090000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a2_ack!3251))
                           ((_ to_fp 11 53) a5_ack!3253)))))
(let ((a!2 (fp.lt ((_ to_fp 11 53) #x4090000000000000)
                  (fp.div roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4090000000000000)
                                  a!1)
                          ((_ to_fp 11 53) #x4000000000000000)))))
  (not a!2))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a2_ack!3251))
                           ((_ to_fp 11 53) a5_ack!3253)))))
(let ((a!2 (fp.gt ((_ to_fp 11 53) #x4090000000000000)
                  (fp.mul roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4090000000000000)
                                  a!1)
                          ((_ to_fp 11 53) #x4000000000000000)))))
  (not a!2))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a2_ack!3251))
                           ((_ to_fp 11 53) a5_ack!3253)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fee666666666666)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4090000000000000)
                                   a!1)))))
  (fp.lt (fp.add roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x4090000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x4090000000000000))
         (fp.mul roundNearestTiesToEven
                 a!2
                 ((_ to_fp 11 53) #x4040000000000000))))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!3252))
                           ((_ to_fp 11 53) a5_ack!3253)))))
  (not (fp.eq (fp.add roundNearestTiesToEven
                      ((_ to_fp 11 53) #x4040000000000000)
                      a!1)
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!3252))
                           ((_ to_fp 11 53) a5_ack!3253)))))
  (fp.lt ((_ to_fp 11 53) #x3ff0000000000000)
         (fp.div roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x4040000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!3252))
                           ((_ to_fp 11 53) a5_ack!3253)))))
  (fp.lt ((_ to_fp 11 53) #x4010000000000000)
         (fp.div roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x4040000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!3252))
                           ((_ to_fp 11 53) a5_ack!3253)))))
(let ((a!2 (fp.lt ((_ to_fp 11 53) #x4030000000000000)
                  (fp.div roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4040000000000000)
                                  a!1)
                          ((_ to_fp 11 53) #x4000000000000000)))))
  (not a!2))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!3252))
                           ((_ to_fp 11 53) a5_ack!3253)))))
(let ((a!2 (fp.gt ((_ to_fp 11 53) #x4030000000000000)
                  (fp.mul roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4040000000000000)
                                  a!1)
                          ((_ to_fp 11 53) #x4000000000000000)))))
  (not a!2))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!3252))
                           ((_ to_fp 11 53) a5_ack!3253)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fee666666666666)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4040000000000000)
                                   a!1)))))
  (fp.lt (fp.add roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x4040000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x4030000000000000))
         (fp.mul roundNearestTiesToEven
                 a!2
                 ((_ to_fp 11 53) #x4010000000000000))))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!3254))
                           ((_ to_fp 11 53) a5_ack!3253))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3f50000000000000))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1)
                           (fp.abs a!2))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           a!1))))
  (fp.eq a!3 (fp.abs a!2)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!3254))
                           ((_ to_fp 11 53) a5_ack!3253))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3f50000000000000))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1)
                           (fp.abs a!2))
                   (fp.abs a!2))))
  (fp.eq a!3
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) #x0000000000000000)
                 a!1)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!3254))
                           ((_ to_fp 11 53) a5_ack!3253))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3f50000000000000)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a2_ack!3251))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fa0000000000000)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!3252))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1)
                           (fp.abs a!2))
                   (fp.abs a!3))))
  (not (fp.eq (fp.add roundNearestTiesToEven a!4 (fp.abs a!5))
              ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!3254))
                           ((_ to_fp 11 53) a5_ack!3253))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3f50000000000000)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a2_ack!3251))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fa0000000000000)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!3252))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1)
                           (fp.abs a!2))
                   (fp.abs a!3))))
  (not (fp.lt (fp.add roundNearestTiesToEven a!4 (fp.abs a!5))
              ((_ to_fp 11 53) #x4000000000000000))))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!3254))
                           ((_ to_fp 11 53) a5_ack!3253))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3f50000000000000)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a2_ack!3251))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fa0000000000000)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!3252))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1)
                           (fp.abs a!2))
                   (fp.abs a!3))))
  (fp.gt (fp.add roundNearestTiesToEven a!4 (fp.abs a!5))
         ((_ to_fp 11 53) #x4020000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!3254))
                           ((_ to_fp 11 53) a5_ack!3253))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3f50000000000000)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a2_ack!3251))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fa0000000000000)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!3252))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1)
                           (fp.abs a!2))
                   (fp.abs a!3))))
  (fp.gt (fp.div roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!4 (fp.abs a!5))
                 ((_ to_fp 11 53) #x4010000000000000))
         ((_ to_fp 11 53) #x4020000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!3254))
                           ((_ to_fp 11 53) a5_ack!3253))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3f50000000000000)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a2_ack!3251))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fa0000000000000)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!3252))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1)
                           (fp.abs a!2))
                   (fp.abs a!3))))
(let ((a!6 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven a!4 (fp.abs a!5))
                           ((_ to_fp 11 53) #x4010000000000000))
                   ((_ to_fp 11 53) #x4010000000000000))))
  (fp.gt a!6 ((_ to_fp 11 53) #x4020000000000000))))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!3254))
                           ((_ to_fp 11 53) a5_ack!3253))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3f50000000000000)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a2_ack!3251))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fa0000000000000)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!3252))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1)
                           (fp.abs a!2))
                   (fp.abs a!3))))
(let ((a!6 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven a!4 (fp.abs a!5))
                           ((_ to_fp 11 53) #x4010000000000000))
                   ((_ to_fp 11 53) #x4010000000000000))))
  (fp.gt (fp.div roundNearestTiesToEven
                 a!6
                 ((_ to_fp 11 53) #x4010000000000000))
         ((_ to_fp 11 53) #x4020000000000000))))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!3254))
                           ((_ to_fp 11 53) a5_ack!3253))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3f50000000000000)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a2_ack!3251))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fa0000000000000)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!3252))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1)
                           (fp.abs a!2))
                   (fp.abs a!3))))
(let ((a!6 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven a!4 (fp.abs a!5))
                           ((_ to_fp 11 53) #x4010000000000000))
                   ((_ to_fp 11 53) #x4010000000000000))))
(let ((a!7 (fp.gt (fp.div roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  a!6
                                  ((_ to_fp 11 53) #x4010000000000000))
                          ((_ to_fp 11 53) #x4010000000000000))
                  ((_ to_fp 11 53) #x4020000000000000))))
  (not a!7))))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!3254))
                           ((_ to_fp 11 53) a5_ack!3253))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3f50000000000000)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a2_ack!3251))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fa0000000000000)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!3252))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1)
                           (fp.abs a!2))
                   (fp.abs a!3))))
(let ((a!6 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven a!4 (fp.abs a!5))
                           ((_ to_fp 11 53) #x4010000000000000))
                   ((_ to_fp 11 53) #x4010000000000000))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4010000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x4010000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!7
                 ((_ to_fp 11 53) #x4010000000000000))
         (fp.div roundNearestTiesToEven
                 (fp.div roundNearestTiesToEven
                         a!6
                         ((_ to_fp 11 53) #x4010000000000000))
                 ((_ to_fp 11 53) #x4010000000000000))))))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!3254))
                           ((_ to_fp 11 53) a5_ack!3253))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3f50000000000000)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a2_ack!3251))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fa0000000000000)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!3252))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1)
                           (fp.abs a!2))
                   (fp.abs a!3))))
(let ((a!6 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven a!4 (fp.abs a!5))
                           ((_ to_fp 11 53) #x4010000000000000))
                   ((_ to_fp 11 53) #x4010000000000000))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4010000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x4010000000000000)))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   a!7
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x4010000000000000)))))
  (fp.eq a!8 ((_ to_fp 11 53) #x4010000000000000))))))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!3254))
                           ((_ to_fp 11 53) a5_ack!3253))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3f50000000000000)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a2_ack!3251))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fa0000000000000)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!3252))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1)
                           (fp.abs a!2))
                   (fp.abs a!3))))
(let ((a!6 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven a!4 (fp.abs a!5))
                           ((_ to_fp 11 53) #x4010000000000000))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fee666666666666)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven a!4 (fp.abs a!5))
                           ((_ to_fp 11 53) #x4010000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4010000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x4010000000000000))
                           ((_ to_fp 11 53) #x4010000000000000)))))
  (fp.lt a!7
         (fp.mul roundNearestTiesToEven
                 a!8
                 ((_ to_fp 11 53) #x3fb0000000000000))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!3254))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fb0000000000000))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!3254))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fb0000000000000))))
  (fp.lt ((_ to_fp 11 53) #x3f50000000000000)
         (fp.div roundNearestTiesToEven
                 (fp.abs a!1)
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!3254))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fb0000000000000))))
  (fp.lt ((_ to_fp 11 53) #x3f70000000000000)
         (fp.div roundNearestTiesToEven
                 (fp.abs a!1)
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!3254))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fb0000000000000))))
  (not (fp.lt ((_ to_fp 11 53) #x3f90000000000000)
              (fp.div roundNearestTiesToEven
                      (fp.abs a!1)
                      ((_ to_fp 11 53) #x4000000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!3254))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fb0000000000000))))
  (not (fp.gt ((_ to_fp 11 53) #x3f90000000000000)
              (fp.mul roundNearestTiesToEven
                      (fp.abs a!1)
                      ((_ to_fp 11 53) #x4000000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!3254))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fb0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fee666666666666)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f50000000000000)
                                   (fp.abs a!1)))
                   ((_ to_fp 11 53) #x4010000000000000))))
  (fp.lt (fp.add roundNearestTiesToEven
                 (fp.abs a!1)
                 ((_ to_fp 11 53) #x3f90000000000000))
         a!2))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3f50000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f70000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fb0000000000000))))))
  (not (fp.eq a!2 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3f50000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f70000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fb0000000000000))))))
  (not (fp.lt ((_ to_fp 11 53) #x4040000000000000)
              (fp.div roundNearestTiesToEven
                      a!2
                      ((_ to_fp 11 53) #x4000000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3f50000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f70000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fb0000000000000))))))
  (not (fp.gt ((_ to_fp 11 53) #x4040000000000000)
              (fp.mul roundNearestTiesToEven
                      a!2
                      ((_ to_fp 11 53) #x4000000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3f50000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f70000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fb0000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fee666666666666)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4040000000000000)
                                   a!2))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.lt (fp.add roundNearestTiesToEven
                      a!2
                      ((_ to_fp 11 53) #x4040000000000000))
              a!3))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a2_ack!3251))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fa0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4040000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fb0000000000000))))))
  (not (fp.eq a!2 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a2_ack!3251))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fa0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4040000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fb0000000000000))))))
  (fp.lt ((_ to_fp 11 53) #x4020000000000000)
         (fp.div roundNearestTiesToEven
                 a!2
                 ((_ to_fp 11 53) #x4000000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a2_ack!3251))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fa0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4040000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fb0000000000000))))))
  (not (fp.lt ((_ to_fp 11 53) #x4040000000000000)
              (fp.div roundNearestTiesToEven
                      a!2
                      ((_ to_fp 11 53) #x4000000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a2_ack!3251))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fa0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4040000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fb0000000000000))))))
  (not (fp.gt ((_ to_fp 11 53) #x4040000000000000)
              (fp.mul roundNearestTiesToEven
                      a!2
                      ((_ to_fp 11 53) #x4000000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a2_ack!3251))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fa0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4040000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fb0000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fee666666666666)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   a!2))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (fp.lt (fp.add roundNearestTiesToEven
                 a!2
                 ((_ to_fp 11 53) #x4040000000000000))
         a!3)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!3252))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4030000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fb0000000000000))))))
  (not (fp.eq a!2 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!3252))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4030000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fb0000000000000))))))
  (not (fp.lt ((_ to_fp 11 53) #x4050000000000000)
              (fp.div roundNearestTiesToEven
                      a!2
                      ((_ to_fp 11 53) #x4000000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!3252))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4030000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fb0000000000000))))))
  (fp.gt ((_ to_fp 11 53) #x4050000000000000)
         (fp.mul roundNearestTiesToEven
                 a!2
                 ((_ to_fp 11 53) #x4000000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!3252))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4030000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fb0000000000000))))))
  (not (fp.gt ((_ to_fp 11 53) #x4030000000000000)
              (fp.mul roundNearestTiesToEven
                      a!2
                      ((_ to_fp 11 53) #x4000000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!3252))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4030000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fb0000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fee666666666666)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4050000000000000)
                                   a!2))
                   ((_ to_fp 11 53) #x3fe0000000000000))))
  (fp.lt (fp.add roundNearestTiesToEven
                 a!2
                 ((_ to_fp 11 53) #x4030000000000000))
         a!3)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!3254))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fb0000000000000)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3f50000000000000)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a2_ack!3251))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fa0000000000000)))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!3252))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fd0000000000000)))))
      (a!6 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3fb0000000000000))
                           ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!8 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3fb0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3fb0000000000000))))))
  (not (fp.eq (fp.add roundNearestTiesToEven
                      (fp.add roundNearestTiesToEven a!4 a!6)
                      a!8)
              ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!3254))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fb0000000000000)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3f50000000000000)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a2_ack!3251))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fa0000000000000)))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!3252))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fd0000000000000)))))
      (a!6 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3fb0000000000000))
                           ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!8 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3fb0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3fb0000000000000))))))
  (not (fp.lt (fp.add roundNearestTiesToEven
                      (fp.add roundNearestTiesToEven a!4 a!6)
                      a!8)
              ((_ to_fp 11 53) #x4030000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!3254))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fb0000000000000)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3f50000000000000)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a2_ack!3251))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fa0000000000000)))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!3252))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fd0000000000000)))))
      (a!6 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3fb0000000000000))
                           ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!8 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3fb0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3fb0000000000000))))))
  (not (fp.gt (fp.add roundNearestTiesToEven
                      (fp.add roundNearestTiesToEven a!4 a!6)
                      a!8)
              ((_ to_fp 11 53) #x4050000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!3254))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fb0000000000000)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3f50000000000000)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a2_ack!3251))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fa0000000000000)))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!3252))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fd0000000000000)))))
      (a!6 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3fb0000000000000))
                           ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!8 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3fb0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3fb0000000000000))))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fee666666666666)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   (fp.add roundNearestTiesToEven a!4 a!6)
                                   a!8)
                           ((_ to_fp 11 53) #x4040000000000000)))))
(let ((a!10 (fp.lt (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4040000000000000)
                           (fp.add roundNearestTiesToEven
                                   (fp.add roundNearestTiesToEven a!4 a!6)
                                   a!8))
                   (fp.mul roundNearestTiesToEven
                           a!9
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not a!10)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!3254))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fb0000000000000))))
(let ((a!2 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) #x3fd0000000000000)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!2))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!3254))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fb0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fd0000000000000)))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (not (fp.lt ((_ to_fp 11 53) #x3f70000000000000) a!2)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!3254))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fb0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fd0000000000000)))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (not (fp.gt ((_ to_fp 11 53) #x3f70000000000000) a!2)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!3254))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fb0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fd0000000000000)))
                   ((_ to_fp 11 53) #x3f70000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f70000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fd0000000000000))))))
(let ((a!4 (fp.lt a!2
                  (fp.mul roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3fee666666666666)
                                  a!3)
                          ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not a!4)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3f50000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f70000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fb0000000000000))))))
  (not (fp.eq a!2 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3f50000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f70000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fb0000000000000))))))
  (fp.lt ((_ to_fp 11 53) #x4030000000000000)
         (fp.div roundNearestTiesToEven
                 a!2
                 ((_ to_fp 11 53) #x4000000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3f50000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f70000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fb0000000000000))))))
  (not (fp.lt ((_ to_fp 11 53) #x4050000000000000)
              (fp.div roundNearestTiesToEven
                      a!2
                      ((_ to_fp 11 53) #x4000000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3f50000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f70000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fb0000000000000))))))
  (not (fp.gt ((_ to_fp 11 53) #x4050000000000000)
              (fp.mul roundNearestTiesToEven
                      a!2
                      ((_ to_fp 11 53) #x4000000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3f50000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f70000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fb0000000000000))))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fee666666666666)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4030000000000000)
                                   a!2))
                   ((_ to_fp 11 53) #x3fee666666666666))))
  (fp.eq a!3
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) #x4030000000000000)
                 a!2))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3f50000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f70000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fb0000000000000))))))
(let ((a!3 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4030000000000000)
                                  a!2))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!3)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3f50000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f70000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fb0000000000000))))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fee666666666666)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4030000000000000)
                                   a!2))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4030000000000000)
                           a!2))))
  (fp.eq a!3 ((_ to_fp 11 53) #x3fee666666666666))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3f50000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f70000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fb0000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fee666666666666)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4030000000000000)
                                   a!2))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (fp.lt (fp.add roundNearestTiesToEven
                 a!2
                 ((_ to_fp 11 53) #x4050000000000000))
         a!3)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a2_ack!3251))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fa0000000000000))))
(let ((a!2 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fb0000000000000))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (not (fp.eq (fp.add roundNearestTiesToEven
                      ((_ to_fp 11 53) #x4040000000000000)
                      a!2)
              ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a2_ack!3251))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fa0000000000000))))
(let ((a!2 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fb0000000000000))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!3 (fp.lt ((_ to_fp 11 53) #x4040000000000000)
                  (fp.div roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4040000000000000)
                                  a!2)
                          ((_ to_fp 11 53) #x4000000000000000)))))
  (not a!3)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a2_ack!3251))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fa0000000000000))))
(let ((a!2 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fb0000000000000))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!3 (fp.gt ((_ to_fp 11 53) #x4040000000000000)
                  (fp.mul roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4040000000000000)
                                  a!2)
                          ((_ to_fp 11 53) #x4000000000000000)))))
  (not a!3)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a2_ack!3251))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fa0000000000000))))
(let ((a!2 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fb0000000000000))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fee666666666666)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4040000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4040000000000000)
                                   a!2)))))
(let ((a!4 (fp.lt (fp.add roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4040000000000000)
                                  a!2)
                          ((_ to_fp 11 53) #x4040000000000000))
                  (fp.mul roundNearestTiesToEven
                          a!3
                          ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not a!4))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!3252))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!2 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fb0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.eq (fp.add roundNearestTiesToEven
                      ((_ to_fp 11 53) #x4040000000000000)
                      a!2)
              ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!3252))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!2 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fb0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!3 (fp.lt ((_ to_fp 11 53) #x4040000000000000)
                  (fp.div roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4040000000000000)
                                  a!2)
                          ((_ to_fp 11 53) #x4000000000000000)))))
  (not a!3)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!3252))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!2 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fb0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!3 (fp.gt ((_ to_fp 11 53) #x4040000000000000)
                  (fp.mul roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4040000000000000)
                                  a!2)
                          ((_ to_fp 11 53) #x4000000000000000)))))
  (not a!3)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!3252))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!2 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fb0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fee666666666666)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4040000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4040000000000000)
                                   a!2)))))
(let ((a!4 (fp.lt (fp.add roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4040000000000000)
                                  a!2)
                          ((_ to_fp 11 53) #x4040000000000000))
                  (fp.mul roundNearestTiesToEven
                          a!3
                          ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not a!4))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!3254))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fb0000000000000)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!3250))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3f50000000000000)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a2_ack!3251))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fa0000000000000)))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a3_ack!3252))
                           ((_ to_fp 11 53) a5_ack!3253))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fd0000000000000)))))
      (a!4 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3fb0000000000000))
                           ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!6 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3fb0000000000000))
                           ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!8 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3fb0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (FPCHECK_FADD_ACCURACY
    (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven a!2 a!4) a!6)
    a!8))))

(check-sat)
(exit)
