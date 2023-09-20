(declare-fun x1_ack!5403 () (_ BitVec 64))
(declare-fun x0_ack!5410 () (_ BitVec 64))
(declare-fun x2_ack!5404 () (_ BitVec 64))
(declare-fun b_ack!5409 () (_ BitVec 64))
(declare-fun a_ack!5408 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!5405 () (_ BitVec 64))
(declare-fun y1_ack!5406 () (_ BitVec 64))
(declare-fun y2_ack!5407 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5410) ((_ to_fp 11 53) x1_ack!5403)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5403) ((_ to_fp 11 53) x2_ack!5404)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5403)
                       ((_ to_fp 11 53) x0_ack!5410))
               ((_ to_fp 11 53) x0_ack!5410))
       ((_ to_fp 11 53) x1_ack!5403)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5403)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5403)
                       ((_ to_fp 11 53) x0_ack!5410)))
       ((_ to_fp 11 53) x0_ack!5410)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5404)
                       ((_ to_fp 11 53) x1_ack!5403))
               ((_ to_fp 11 53) x1_ack!5403))
       ((_ to_fp 11 53) x2_ack!5404)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5404)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5404)
                       ((_ to_fp 11 53) x1_ack!5403)))
       ((_ to_fp 11 53) x1_ack!5403)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5403)
                    ((_ to_fp 11 53) x0_ack!5410))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5404)
                    ((_ to_fp 11 53) x1_ack!5403))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5408) ((_ to_fp 11 53) b_ack!5409))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5408) ((_ to_fp 11 53) x0_ack!5410))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5409) ((_ to_fp 11 53) x2_ack!5404))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5408) ((_ to_fp 11 53) b_ack!5409))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5408) ((_ to_fp 11 53) x0_ack!5410))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5408) ((_ to_fp 11 53) x1_ack!5403)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5403) ((_ to_fp 11 53) a_ack!5408))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5409) ((_ to_fp 11 53) x1_ack!5403))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5409) ((_ to_fp 11 53) x2_ack!5404)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5404)
                    ((_ to_fp 11 53) x1_ack!5403))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5408)
                       ((_ to_fp 11 53) x1_ack!5403))
               ((_ to_fp 11 53) x1_ack!5403))
       ((_ to_fp 11 53) a_ack!5408)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5408)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5408)
                       ((_ to_fp 11 53) x1_ack!5403)))
       ((_ to_fp 11 53) x1_ack!5403)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5408)
                                  ((_ to_fp 11 53) x1_ack!5403)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5408)
                                   ((_ to_fp 11 53) x1_ack!5403))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5408)
                                   ((_ to_fp 11 53) x1_ack!5403)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5408)
                           ((_ to_fp 11 53) x1_ack!5403)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5408)
                 ((_ to_fp 11 53) x1_ack!5403)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5408)
                                  ((_ to_fp 11 53) x1_ack!5403)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5408)
                                   ((_ to_fp 11 53) x1_ack!5403))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5408)
                                   ((_ to_fp 11 53) x1_ack!5403)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5408)
                           ((_ to_fp 11 53) x1_ack!5403)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5408)
                 ((_ to_fp 11 53) x1_ack!5403)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5409)
                                  ((_ to_fp 11 53) x1_ack!5403)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5409)
                                   ((_ to_fp 11 53) x1_ack!5403))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5409)
                                   ((_ to_fp 11 53) x1_ack!5403)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5409)
                           ((_ to_fp 11 53) x1_ack!5403)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5409)
                 ((_ to_fp 11 53) x1_ack!5403)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5409)
                                  ((_ to_fp 11 53) x1_ack!5403)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5409)
                                   ((_ to_fp 11 53) x1_ack!5403))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5409)
                                   ((_ to_fp 11 53) x1_ack!5403)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5409)
                           ((_ to_fp 11 53) x1_ack!5403)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5409)
                 ((_ to_fp 11 53) x1_ack!5403)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5408)
                           ((_ to_fp 11 53) x1_ack!5403))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5408)
                           ((_ to_fp 11 53) x1_ack!5403))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5409)
                           ((_ to_fp 11 53) x1_ack!5403))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5409)
                           ((_ to_fp 11 53) x1_ack!5403)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5408)
                           ((_ to_fp 11 53) x1_ack!5403))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5408)
                           ((_ to_fp 11 53) x1_ack!5403))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5409)
                           ((_ to_fp 11 53) x1_ack!5403))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5409)
                           ((_ to_fp 11 53) x1_ack!5403)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5408)
                                   ((_ to_fp 11 53) x1_ack!5403))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5408)
                                   ((_ to_fp 11 53) x1_ack!5403)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5409)
                                   ((_ to_fp 11 53) x1_ack!5403))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5409)
                                   ((_ to_fp 11 53) x1_ack!5403)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5408)
                           ((_ to_fp 11 53) x1_ack!5403))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5409)
                           ((_ to_fp 11 53) x1_ack!5403)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5408)
                                   ((_ to_fp 11 53) x1_ack!5403))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5408)
                                   ((_ to_fp 11 53) x1_ack!5403)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5409)
                                   ((_ to_fp 11 53) x1_ack!5403))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5409)
                                   ((_ to_fp 11 53) x1_ack!5403)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5408)
                           ((_ to_fp 11 53) x1_ack!5403))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5409)
                           ((_ to_fp 11 53) x1_ack!5403)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!5407)
                           ((_ to_fp 11 53) y1_ack!5406))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5404)
                                   ((_ to_fp 11 53) x1_ack!5403)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!5406)
                           ((_ to_fp 11 53) y0_ack!5405))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5403)
                                   ((_ to_fp 11 53) x0_ack!5410)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5404)
                                   ((_ to_fp 11 53) x1_ack!5403))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5403)
                                   ((_ to_fp 11 53) x0_ack!5410))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5404)
                                   ((_ to_fp 11 53) x1_ack!5403))))))
  (FPCHECK_FMUL_UNDERFLOW #x3fd0000000000000 a!5)))))

(check-sat)
(exit)
