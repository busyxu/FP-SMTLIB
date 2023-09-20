(declare-fun x_ack!8697 () (_ BitVec 64))
(declare-fun nu1_ack!8695 () (_ BitVec 64))
(declare-fun nu2_ack!8696 () (_ BitVec 64))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!8697) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!8697) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!8697) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!8697) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) nu1_ack!8695) ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) nu2_ack!8696) ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu1_ack!8695) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu2_ack!8696) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) nu1_ack!8695) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (ite (fp.eq ((_ to_fp 11 53) nu1_ack!8695) (CF_floor nu1_ack!8695))
                  #x00000001
                  #x00000000))))
  (not (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!8696) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) nu1_ack!8695) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) nu1_ack!8695)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) nu1_ack!8695)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) nu1_ack!8695)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) nu1_ack!8695)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu1_ack!8695)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu1_ack!8695)
                                  ((_ to_fp 11 53) #x4000000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) nu1_ack!8695)
             ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu1_ack!8695) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) nu1_ack!8695))
            ((_ to_fp 11 53) #x3f947ae147ae147b))))
(assert (fp.gt ((_ to_fp 11 53) nu1_ack!8695) ((_ to_fp 11 53) #xc3045f306dc9c883)))
(assert (let ((a!1 (fp.eq (CF_sin (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x400921fb54442d18)
                                  ((_ to_fp 11 53) nu1_ack!8695)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (CF_sin (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x400921fb54442d18)
                                   ((_ to_fp 11 53) nu1_ack!8695))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3fa8209f5b22baa6)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) nu1_ack!8695))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3feffffffffff950)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40852429b6c30b05)
                                   a!1))
                   ((_ to_fp 11 53) #x3feffffffffff950))))
  (fp.eq a!2
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #x40852429b6c30b05)
                 a!1)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) nu1_ack!8695))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3feffffffffff950)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40852429b6c30b05)
                                   a!1))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40852429b6c30b05)
                           a!1))))
  (fp.eq a!2 ((_ to_fp 11 53) #x3feffffffffff950)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) nu1_ack!8695))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3feffffffffff950)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40852429b6c30b05)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40881a9661d3b4d8)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc06613ae51a32f5d)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4010000000000000))))))
  (fp.eq (fp.sub roundNearestTiesToEven a!5 a!4)
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #xc06613ae51a32f5d)
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x4010000000000000))))))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) nu1_ack!8695))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3feffffffffff950)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40852429b6c30b05)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40881a9661d3b4d8)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc06613ae51a32f5d)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4010000000000000))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   a!5
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc06613ae51a32f5d)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4010000000000000))))))
  (fp.eq a!6 a!4))))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) nu1_ack!8695))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3feffffffffff950)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40852429b6c30b05)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40881a9661d3b4d8)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc06613ae51a32f5d)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4010000000000000))))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!5
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x402903c27f8b9c81)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4014000000000000))))))
  (fp.eq (fp.sub roundNearestTiesToEven a!6 a!5)
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #x402903c27f8b9c81)
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x4014000000000000)))))))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) nu1_ack!8695))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3feffffffffff950)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40852429b6c30b05)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40881a9661d3b4d8)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc06613ae51a32f5d)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4010000000000000))))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!5
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x402903c27f8b9c81)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x402903c27f8b9c81)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4014000000000000))))))
  (fp.eq a!7 a!5)))))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) nu1_ack!8695))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x4018000000000000))
                 a!1)
         ((_ to_fp 11 53) #x4018000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) nu1_ack!8695))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x4018000000000000))
                 ((_ to_fp 11 53) #x4018000000000000))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) nu1_ack!8695))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3feffffffffff950)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40852429b6c30b05)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40881a9661d3b4d8)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc06613ae51a32f5d)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4010000000000000))))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!5
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x402903c27f8b9c81)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfc1bcb2992b2855)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4018000000000000))))))
  (fp.eq (fp.sub roundNearestTiesToEven a!7 a!6)
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #xbfc1bcb2992b2855)
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x4018000000000000))))))))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) nu1_ack!8695))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3feffffffffff950)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40852429b6c30b05)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40881a9661d3b4d8)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc06613ae51a32f5d)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4010000000000000))))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!5
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x402903c27f8b9c81)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfc1bcb2992b2855)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4018000000000000))))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   a!7
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfc1bcb2992b2855)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4018000000000000))))))
  (fp.eq a!8 a!6))))))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) nu1_ack!8695))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3feffffffffff950)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40852429b6c30b05)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40881a9661d3b4d8)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc06613ae51a32f5d)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4010000000000000))))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!5
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x402903c27f8b9c81)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfc1bcb2992b2855)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4018000000000000))))))
  (FPCHECK_FADD_ACCURACY
    a!7
    (fp.div roundNearestTiesToEven
            ((_ to_fp 11 53) #x3ee4f0514e4e324f)
            (fp.add roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x401c000000000000))))))))))))

(check-sat)
(exit)
