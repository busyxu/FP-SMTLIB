(declare-fun a_ack!5249 () (_ BitVec 64))
(declare-fun b_ack!5246 () (_ BitVec 64))
(declare-fun c_ack!5247 () (_ BitVec 64))
(declare-fun d_ack!5248 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5249) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5246) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!5247) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) d_ack!5248)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!5248) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) #x3ff0000000000000) ((_ to_fp 11 53) d_ack!5248))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!5247)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) c_ack!5247)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d4f400000000000)))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!5247)
                       ((_ to_fp 11 53) b_ack!5246))
               ((_ to_fp 11 53) b_ack!5246))
       ((_ to_fp 11 53) c_ack!5247)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!5247)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!5247)
                       ((_ to_fp 11 53) b_ack!5246)))
       ((_ to_fp 11 53) b_ack!5246)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!5247)
                                  ((_ to_fp 11 53) b_ack!5246)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!5247)
                       ((_ to_fp 11 53) a_ack!5249))
               ((_ to_fp 11 53) a_ack!5249))
       ((_ to_fp 11 53) c_ack!5247)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!5247)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!5247)
                       ((_ to_fp 11 53) a_ack!5249)))
       ((_ to_fp 11 53) a_ack!5249)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!5247)
                                  ((_ to_fp 11 53) a_ack!5249)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5249) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5246) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!5247) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!5249))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!5246))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (fp.lt ((_ to_fp 11 53) d_ack!5248) ((_ to_fp 11 53) #xbfd0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!5246)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) b_ack!5246))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!5246)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) b_ack!5246)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5246)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!5247)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5246)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!5247)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248)))
                   a!1)))
  (fp.eq a!2
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x8000000000000000)
                 ((_ to_fp 11 53) d_ack!5248))))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  ((_ to_fp 11 53) d_ack!5248)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5246)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!5247)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) d_ack!5248)))))
  (fp.eq a!2 a!1))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) b_ack!5246))
                           ((_ to_fp 11 53) c_ack!5247)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5249)
                           ((_ to_fp 11 53) b_ack!5246))
                   ((_ to_fp 11 53) c_ack!5247))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248)))
                   a!1)))
  (fp.eq a!2
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x8000000000000000)
                 ((_ to_fp 11 53) d_ack!5248))))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  ((_ to_fp 11 53) d_ack!5248)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5249)
                           ((_ to_fp 11 53) b_ack!5246))
                   ((_ to_fp 11 53) c_ack!5247))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) d_ack!5248)))))
  (fp.eq a!2 a!1))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) b_ack!5246))
                           ((_ to_fp 11 53) c_ack!5247)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5249)
                           ((_ to_fp 11 53) b_ack!5246))
                   ((_ to_fp 11 53) c_ack!5247)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5246)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!5247)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248))))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!3)
                 a!1)
         a!3))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5246)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!5247)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248))))))
  (not (fp.eq (fp.abs a!2) ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5249)
                           ((_ to_fp 11 53) b_ack!5246))
                   ((_ to_fp 11 53) c_ack!5247)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5246)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!5247)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248))))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!3)
                 a!3)
         a!1))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5246)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!5247)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5246)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!5247)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4008000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248)))))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248)))
                   a!3))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) b_ack!5246))
                           ((_ to_fp 11 53) c_ack!5247))
                   a!5)))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248))))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   a!7
                   (fp.mul roundNearestTiesToEven
                           a!6
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248))))))
  (fp.eq a!8
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 a!4))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5246)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!5247)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5246)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!5247)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4008000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248)))))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248)))
                   a!3))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) b_ack!5246))
                           ((_ to_fp 11 53) c_ack!5247))
                   a!5)))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!4)
                 a!7)
         (fp.mul roundNearestTiesToEven
                 a!6
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x8000000000000000)
                         ((_ to_fp 11 53) d_ack!5248)))))))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) b_ack!5246))
                           ((_ to_fp 11 53) c_ack!5247)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5249)
                           ((_ to_fp 11 53) b_ack!5246))
                   ((_ to_fp 11 53) c_ack!5247)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5246)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!5247)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5246)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!5247)))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5249)
                           ((_ to_fp 11 53) b_ack!5246))
                   ((_ to_fp 11 53) c_ack!5247)))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5246)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!5247)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) b_ack!5246))
                           ((_ to_fp 11 53) #x4018000000000000)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5249)
                           ((_ to_fp 11 53) b_ack!5246))
                   ((_ to_fp 11 53) #x4018000000000000))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x4008000000000000))
                 a!1)
         ((_ to_fp 11 53) #x4008000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5249)
                           ((_ to_fp 11 53) b_ack!5246))
                   ((_ to_fp 11 53) #x4018000000000000))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x4008000000000000))
                 ((_ to_fp 11 53) #x4008000000000000))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) b_ack!5246))
                           ((_ to_fp 11 53) #x4018000000000000))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x403b000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x403b000000000000))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) b_ack!5246))
                           ((_ to_fp 11 53) #x4018000000000000))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x403b000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x403b000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) b_ack!5246))
                           ((_ to_fp 11 53) #x4018000000000000))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403b000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5249)
                           ((_ to_fp 11 53) b_ack!5246)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 a!2
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) a_ack!5249)
                         ((_ to_fp 11 53) b_ack!5246)))
         (fp.add roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x403b000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x4000000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) b_ack!5246))
                           ((_ to_fp 11 53) #x4018000000000000))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403b000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5249)
                           ((_ to_fp 11 53) b_ack!5246)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403b000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   a!2)))
  (fp.eq a!3
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5249)
                 ((_ to_fp 11 53) b_ack!5246)))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           ((_ to_fp 11 53) c_ack!5247))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x4018000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x4018000000000000))
         a!1)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) c_ack!5247))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           ((_ to_fp 11 53) c_ack!5247))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x4018000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x4018000000000000))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) a_ack!5249))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           ((_ to_fp 11 53) a_ack!5249))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           ((_ to_fp 11 53) a_ack!5249))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) a_ack!5249))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           ((_ to_fp 11 53) a_ack!5249))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           ((_ to_fp 11 53) a_ack!5249))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4052000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) c_ack!5247))
                           ((_ to_fp 11 53) #x4008000000000000)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) c_ack!5247))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.eq (fp.abs a!2) ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4052000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) c_ack!5247))
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           ((_ to_fp 11 53) c_ack!5247))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) c_ack!5247))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!2 a!3)
                 a!2)
         a!3))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) c_ack!5247))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4052000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) c_ack!5247))
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           ((_ to_fp 11 53) c_ack!5247))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) c_ack!5247))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!2 a!3)
                 a!3)
         a!2))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           ((_ to_fp 11 53) a_ack!5249))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           ((_ to_fp 11 53) b_ack!5246))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           ((_ to_fp 11 53) c_ack!5247))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           ((_ to_fp 11 53) c_ack!5247))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) b_ack!5246))
                           ((_ to_fp 11 53) #x4018000000000000))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!1)
                           a!2)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) c_ack!5247))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!8 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403b000000000000)
                                   a!7)
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5249)
                           ((_ to_fp 11 53) b_ack!5246)))))
(let ((a!6 (fp.div roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4018000000000000)
                                   a!4)
                           a!5)))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!8)
                           a!1)
                   a!2)))
(let ((a!10 (fp.div roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x404e000000000000)
                                    a!4)
                            a!5))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    a!6
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248))))))
  (fp.eq (fp.sub roundNearestTiesToEven a!11 a!6)
         (fp.mul roundNearestTiesToEven
                 a!10
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x8000000000000000)
                         ((_ to_fp 11 53) d_ack!5248))))))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           ((_ to_fp 11 53) a_ack!5249))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           ((_ to_fp 11 53) b_ack!5246))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           ((_ to_fp 11 53) c_ack!5247))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           ((_ to_fp 11 53) c_ack!5247))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) b_ack!5246))
                           ((_ to_fp 11 53) #x4018000000000000))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!1)
                           a!2)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) c_ack!5247))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!8 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403b000000000000)
                                   a!7)
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5249)
                           ((_ to_fp 11 53) b_ack!5246)))))
(let ((a!6 (fp.div roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4018000000000000)
                                   a!4)
                           a!5)))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!8)
                           a!1)
                   a!2)))
(let ((a!10 (fp.div roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x404e000000000000)
                                    a!4)
                            a!5))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    a!6
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248))))))
(let ((a!12 (fp.sub roundNearestTiesToEven
                    a!11
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248))))))
  (fp.eq a!12 a!6))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) b_ack!5246))
                           ((_ to_fp 11 53) #x4018000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           ((_ to_fp 11 53) c_ack!5247))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5246)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!5247)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5246)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!5247))))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!5249)
                            ((_ to_fp 11 53) b_ack!5246))
                    ((_ to_fp 11 53) c_ack!5247)))
      (a!16 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            ((_ to_fp 11 53) a_ack!5249))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!17 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            ((_ to_fp 11 53) b_ack!5246))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!19 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            ((_ to_fp 11 53) c_ack!5247))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!21 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!5249)
                                    ((_ to_fp 11 53) b_ack!5246))
                            ((_ to_fp 11 53) #x4018000000000000))
                    ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403b000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5249)
                           ((_ to_fp 11 53) b_ack!5246))))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x4008000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248)))))
      (a!11 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            a!6
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!10 a!7)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!5247)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!5247)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!18 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!16)
                            a!17)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) c_ack!5247))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!22 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x403b000000000000)
                                    a!21)
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!5249)
                            ((_ to_fp 11 53) b_ack!5246))))
      (a!26 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            a!7
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) b_ack!5246)))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!6
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248)))
                   a!8))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!13
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            ((_ to_fp 11 53) d_ack!5248))))
      (a!20 (fp.div roundNearestTiesToEven
                    a!18
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    a!19)
                            a!4)))
      (a!23 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!22)
                            a!16)
                    a!17))
      (a!27 (fp.sub roundNearestTiesToEven
                    a!26
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248))))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4018000000000000)
                                   a!4))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) d_ack!5248))))
      (a!12 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!9)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!10 a!11)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))))
      (a!24 (fp.div roundNearestTiesToEven
                    a!23
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x404e000000000000)
                                    a!19)
                            a!4))))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!5)
                    (fp.add roundNearestTiesToEven a!12 a!14)))
      (a!25 (fp.add roundNearestTiesToEven
                    a!20
                    (fp.mul roundNearestTiesToEven
                            a!24
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248))))))
(let ((a!28 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!25
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))
                    a!27)))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!15 a!28)
                 a!15)
         a!28))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) b_ack!5246))
                           ((_ to_fp 11 53) #x4018000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           ((_ to_fp 11 53) c_ack!5247))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5246)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!5247)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5246)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!5247))))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!5249)
                            ((_ to_fp 11 53) b_ack!5246))
                    ((_ to_fp 11 53) c_ack!5247)))
      (a!16 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            ((_ to_fp 11 53) a_ack!5249))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!17 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            ((_ to_fp 11 53) b_ack!5246))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!19 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            ((_ to_fp 11 53) c_ack!5247))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!21 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!5249)
                                    ((_ to_fp 11 53) b_ack!5246))
                            ((_ to_fp 11 53) #x4018000000000000))
                    ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403b000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5249)
                           ((_ to_fp 11 53) b_ack!5246))))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x4008000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248)))))
      (a!11 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            a!6
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!10 a!7)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!5247)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!5247)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!18 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!16)
                            a!17)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) c_ack!5247))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!22 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x403b000000000000)
                                    a!21)
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!5249)
                            ((_ to_fp 11 53) b_ack!5246))))
      (a!26 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            a!7
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) b_ack!5246)))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!6
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248)))
                   a!8))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!13
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            ((_ to_fp 11 53) d_ack!5248))))
      (a!20 (fp.div roundNearestTiesToEven
                    a!18
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    a!19)
                            a!4)))
      (a!23 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!22)
                            a!16)
                    a!17))
      (a!27 (fp.sub roundNearestTiesToEven
                    a!26
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248))))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4018000000000000)
                                   a!4))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) d_ack!5248))))
      (a!12 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!9)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!10 a!11)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))))
      (a!24 (fp.div roundNearestTiesToEven
                    a!23
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x404e000000000000)
                                    a!19)
                            a!4))))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!5)
                    (fp.add roundNearestTiesToEven a!12 a!14)))
      (a!25 (fp.add roundNearestTiesToEven
                    a!20
                    (fp.mul roundNearestTiesToEven
                            a!24
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248))))))
(let ((a!28 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!25
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))
                    a!27)))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!15 a!28)
                 a!28)
         a!15))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) b_ack!5246))
                           ((_ to_fp 11 53) #x4018000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           ((_ to_fp 11 53) c_ack!5247))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5246)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!5247)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5246)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!5247))))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!5249)
                            ((_ to_fp 11 53) b_ack!5246))
                    ((_ to_fp 11 53) c_ack!5247)))
      (a!15 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            ((_ to_fp 11 53) a_ack!5249))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!16 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            ((_ to_fp 11 53) b_ack!5246))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!18 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            ((_ to_fp 11 53) c_ack!5247))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!20 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!5249)
                                    ((_ to_fp 11 53) b_ack!5246))
                            ((_ to_fp 11 53) #x4018000000000000))
                    ((_ to_fp 11 53) #x4008000000000000)))
      (a!33 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4052000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) c_ack!5247))
                            ((_ to_fp 11 53) #x4008000000000000))))
      (a!34 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            ((_ to_fp 11 53) d_ack!5248)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403b000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5249)
                           ((_ to_fp 11 53) b_ack!5246))))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x4008000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248)))))
      (a!11 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            a!6
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!10 a!7)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!5247)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!5247)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!15)
                            a!16)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) c_ack!5247))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x403b000000000000)
                                    a!20)
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!5249)
                            ((_ to_fp 11 53) b_ack!5246))))
      (a!25 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            a!7
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))))
      (a!29 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) a_ack!5249))
                            ((_ to_fp 11 53) #x4000000000000000))
                    a!15)))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) b_ack!5246)))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!6
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248)))
                   a!8))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!13
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            ((_ to_fp 11 53) d_ack!5248))))
      (a!19 (fp.div roundNearestTiesToEven
                    a!17
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    a!18)
                            a!4)))
      (a!22 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!21)
                            a!15)
                    a!16))
      (a!26 (fp.sub roundNearestTiesToEven
                    a!25
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))))
      (a!30 (fp.mul roundNearestTiesToEven
                    a!29
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!5246))
                            ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4018000000000000)
                                   a!4))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) d_ack!5248))))
      (a!12 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!9)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!10 a!11)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))))
      (a!23 (fp.div roundNearestTiesToEven
                    a!22
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x404e000000000000)
                                    a!18)
                            a!4)))
      (a!31 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!30 a!16)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) a_ack!5249))
                            ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!24 (fp.add roundNearestTiesToEven
                    a!19
                    (fp.mul roundNearestTiesToEven
                            a!23
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))))
      (a!32 (fp.mul roundNearestTiesToEven
                    a!31
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!5246))
                            ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!27 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!24
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))
                    a!26))
      (a!35 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!32
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!33 a!18)
                                    a!4))
                    a!34)))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!5)
                            (fp.add roundNearestTiesToEven a!12 a!14))
                    a!27)))
(let ((a!36 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!28
                            (fp.mul roundNearestTiesToEven
                                    a!35
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!28)))
  (fp.eq a!36
         (fp.mul roundNearestTiesToEven
                 a!35
                 ((_ to_fp 11 53) #x3ff0000000000000))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) b_ack!5246))
                           ((_ to_fp 11 53) #x4018000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           ((_ to_fp 11 53) c_ack!5247))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5246)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!5247)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5246)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!5247))))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!5249)
                            ((_ to_fp 11 53) b_ack!5246))
                    ((_ to_fp 11 53) c_ack!5247)))
      (a!15 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            ((_ to_fp 11 53) a_ack!5249))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!16 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            ((_ to_fp 11 53) b_ack!5246))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!18 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            ((_ to_fp 11 53) c_ack!5247))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!20 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!5249)
                                    ((_ to_fp 11 53) b_ack!5246))
                            ((_ to_fp 11 53) #x4018000000000000))
                    ((_ to_fp 11 53) #x4008000000000000)))
      (a!33 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4052000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) c_ack!5247))
                            ((_ to_fp 11 53) #x4008000000000000))))
      (a!34 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            ((_ to_fp 11 53) d_ack!5248)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403b000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5249)
                           ((_ to_fp 11 53) b_ack!5246))))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x4008000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248)))))
      (a!11 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            a!6
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!10 a!7)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!5247)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!5247)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!15)
                            a!16)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) c_ack!5247))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x403b000000000000)
                                    a!20)
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!5249)
                            ((_ to_fp 11 53) b_ack!5246))))
      (a!25 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            a!7
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))))
      (a!29 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) a_ack!5249))
                            ((_ to_fp 11 53) #x4000000000000000))
                    a!15)))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) b_ack!5246)))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!6
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248)))
                   a!8))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!13
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            ((_ to_fp 11 53) d_ack!5248))))
      (a!19 (fp.div roundNearestTiesToEven
                    a!17
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    a!18)
                            a!4)))
      (a!22 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!21)
                            a!15)
                    a!16))
      (a!26 (fp.sub roundNearestTiesToEven
                    a!25
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))))
      (a!30 (fp.mul roundNearestTiesToEven
                    a!29
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!5246))
                            ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4018000000000000)
                                   a!4))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) d_ack!5248))))
      (a!12 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!9)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!10 a!11)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))))
      (a!23 (fp.div roundNearestTiesToEven
                    a!22
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x404e000000000000)
                                    a!18)
                            a!4)))
      (a!31 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!30 a!16)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) a_ack!5249))
                            ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!24 (fp.add roundNearestTiesToEven
                    a!19
                    (fp.mul roundNearestTiesToEven
                            a!23
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))))
      (a!32 (fp.mul roundNearestTiesToEven
                    a!31
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!5246))
                            ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!27 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!24
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))
                    a!26))
      (a!35 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!32
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!33 a!18)
                                    a!4))
                    a!34)))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!5)
                            (fp.add roundNearestTiesToEven a!12 a!14))
                    a!27)))
(let ((a!36 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!28
                            (fp.mul roundNearestTiesToEven
                                    a!35
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!35
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq a!36 a!28))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) b_ack!5246))
                           ((_ to_fp 11 53) #x4018000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           ((_ to_fp 11 53) c_ack!5247))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5246)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!5247)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5246)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!5247))))
      (a!11 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            ((_ to_fp 11 53) a_ack!5249))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!12 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            ((_ to_fp 11 53) b_ack!5246))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!14 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            ((_ to_fp 11 53) c_ack!5247))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!16 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!5249)
                                    ((_ to_fp 11 53) b_ack!5246))
                            ((_ to_fp 11 53) #x4018000000000000))
                    ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403b000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5249)
                           ((_ to_fp 11 53) b_ack!5246))))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x4008000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248)))))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!11)
                            a!12)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) c_ack!5247))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!17 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x403b000000000000)
                                    a!16)
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!5249)
                            ((_ to_fp 11 53) b_ack!5246))))
      (a!21 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            a!7
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) b_ack!5246)))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!6
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248)))
                   a!8))
      (a!15 (fp.div roundNearestTiesToEven
                    a!13
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    a!14)
                            a!4)))
      (a!18 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!17)
                            a!11)
                    a!12)))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4018000000000000)
                                   a!4))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) d_ack!5248))))
      (a!19 (fp.div roundNearestTiesToEven
                    a!18
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x404e000000000000)
                                    a!14)
                            a!4))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!5)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!9)))
      (a!20 (fp.add roundNearestTiesToEven
                    a!15
                    (fp.mul roundNearestTiesToEven
                            a!19
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248))))))
(let ((a!22 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!20
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))
                    a!21)))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!10 a!22)
                 a!10)
         a!22))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) b_ack!5246))
                           ((_ to_fp 11 53) #x4018000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           ((_ to_fp 11 53) c_ack!5247))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5246)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!5247)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5246)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!5247))))
      (a!11 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            ((_ to_fp 11 53) a_ack!5249))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!12 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            ((_ to_fp 11 53) b_ack!5246))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!14 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            ((_ to_fp 11 53) c_ack!5247))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!16 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!5249)
                                    ((_ to_fp 11 53) b_ack!5246))
                            ((_ to_fp 11 53) #x4018000000000000))
                    ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403b000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5249)
                           ((_ to_fp 11 53) b_ack!5246))))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x4008000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248)))))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!11)
                            a!12)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) c_ack!5247))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!17 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x403b000000000000)
                                    a!16)
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!5249)
                            ((_ to_fp 11 53) b_ack!5246))))
      (a!21 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            a!7
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) b_ack!5246)))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!6
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248)))
                   a!8))
      (a!15 (fp.div roundNearestTiesToEven
                    a!13
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    a!14)
                            a!4)))
      (a!18 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!17)
                            a!11)
                    a!12)))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4018000000000000)
                                   a!4))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) d_ack!5248))))
      (a!19 (fp.div roundNearestTiesToEven
                    a!18
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x404e000000000000)
                                    a!14)
                            a!4))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!5)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!9)))
      (a!20 (fp.add roundNearestTiesToEven
                    a!15
                    (fp.mul roundNearestTiesToEven
                            a!19
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248))))))
(let ((a!22 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!20
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))
                    a!21)))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!10 a!22)
                 a!22)
         a!10))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) a_ack!5249))
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) a_ack!5249))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4052000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) c_ack!5247))
                           ((_ to_fp 11 53) #x4008000000000000)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) b_ack!5246))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!7 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) c_ack!5247))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) b_ack!5246))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!8 (fp.mul roundNearestTiesToEven
                   a!7
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) c_ack!5247))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) a_ack!5249))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!4
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) b_ack!5246))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.eq (fp.abs (fp.div roundNearestTiesToEven a!5 a!8))
              ((_ to_fp 11 53) #x0000000000000000)))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) a_ack!5249))
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) a_ack!5249))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4052000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) c_ack!5247))
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) d_ack!5248)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) b_ack!5246))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!7 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) c_ack!5247))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) b_ack!5246))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!8 (fp.mul roundNearestTiesToEven
                   a!7
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) c_ack!5247))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) a_ack!5249))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!4
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) b_ack!5246))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         (fp.div roundNearestTiesToEven a!5 a!8)
                         a!9)
                 (fp.div roundNearestTiesToEven a!5 a!8))
         a!9)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) d_ack!5248)))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) a_ack!5249))
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) a_ack!5249))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4052000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) c_ack!5247))
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) d_ack!5248)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) b_ack!5246))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!7 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) c_ack!5247))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) b_ack!5246))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!8 (fp.mul roundNearestTiesToEven
                   a!7
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) c_ack!5247))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) a_ack!5249))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!4
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) b_ack!5246))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         (fp.div roundNearestTiesToEven a!5 a!8)
                         a!9)
                 a!9)
         (fp.div roundNearestTiesToEven a!5 a!8))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) b_ack!5246))
                           ((_ to_fp 11 53) #x4018000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           ((_ to_fp 11 53) c_ack!5247))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5246)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!5247)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5246)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!5247))))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!5249)
                            ((_ to_fp 11 53) b_ack!5246))
                    ((_ to_fp 11 53) c_ack!5247)))
      (a!15 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            ((_ to_fp 11 53) a_ack!5249))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!16 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            ((_ to_fp 11 53) b_ack!5246))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!18 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            ((_ to_fp 11 53) c_ack!5247))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!20 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!5249)
                                    ((_ to_fp 11 53) b_ack!5246))
                            ((_ to_fp 11 53) #x4018000000000000))
                    ((_ to_fp 11 53) #x4008000000000000)))
      (a!33 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4052000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) c_ack!5247))
                            ((_ to_fp 11 53) #x4008000000000000))))
      (a!34 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            ((_ to_fp 11 53) d_ack!5248)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403b000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5249)
                           ((_ to_fp 11 53) b_ack!5246))))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x4008000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248)))))
      (a!11 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            a!6
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!10 a!7)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!5247)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!5247)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!15)
                            a!16)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) c_ack!5247))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x403b000000000000)
                                    a!20)
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!5249)
                            ((_ to_fp 11 53) b_ack!5246))))
      (a!25 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            a!7
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))))
      (a!29 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) a_ack!5249))
                            ((_ to_fp 11 53) #x4000000000000000))
                    a!15)))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) b_ack!5246)))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!6
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248)))
                   a!8))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!13
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            ((_ to_fp 11 53) d_ack!5248))))
      (a!19 (fp.div roundNearestTiesToEven
                    a!17
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    a!18)
                            a!4)))
      (a!22 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!21)
                            a!15)
                    a!16))
      (a!26 (fp.sub roundNearestTiesToEven
                    a!25
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))))
      (a!30 (fp.mul roundNearestTiesToEven
                    a!29
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!5246))
                            ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4018000000000000)
                                   a!4))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) d_ack!5248))))
      (a!12 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!9)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!10 a!11)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))))
      (a!23 (fp.div roundNearestTiesToEven
                    a!22
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x404e000000000000)
                                    a!18)
                            a!4)))
      (a!31 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!30 a!16)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) a_ack!5249))
                            ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!24 (fp.add roundNearestTiesToEven
                    a!19
                    (fp.mul roundNearestTiesToEven
                            a!23
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))))
      (a!32 (fp.mul roundNearestTiesToEven
                    a!31
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!5246))
                            ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!27 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!24
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))
                    a!26))
      (a!35 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!32
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!33 a!18)
                                    a!4))
                    a!34))
      (a!36 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!24
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))
                    a!25)))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!5)
                            (fp.add roundNearestTiesToEven a!12 a!14))
                    a!27))
      (a!37 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!5)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!9))
                    a!36)))
(let ((a!38 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!28
                            (fp.mul roundNearestTiesToEven
                                    a!35
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    (fp.add roundNearestTiesToEven
                            a!37
                            (fp.mul roundNearestTiesToEven
                                    a!35
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!39 (fp.abs (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!38)
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!39 ((_ to_fp 11 53) #x3cb0000000000000)))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) b_ack!5246))
                           ((_ to_fp 11 53) #x4018000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           ((_ to_fp 11 53) c_ack!5247))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5246)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!5247)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5246)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!5247))))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!5249)
                            ((_ to_fp 11 53) b_ack!5246))
                    ((_ to_fp 11 53) c_ack!5247)))
      (a!15 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            ((_ to_fp 11 53) a_ack!5249))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!16 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            ((_ to_fp 11 53) b_ack!5246))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!18 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            ((_ to_fp 11 53) c_ack!5247))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!20 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!5249)
                                    ((_ to_fp 11 53) b_ack!5246))
                            ((_ to_fp 11 53) #x4018000000000000))
                    ((_ to_fp 11 53) #x4008000000000000)))
      (a!33 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4052000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) c_ack!5247))
                            ((_ to_fp 11 53) #x4008000000000000))))
      (a!34 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            ((_ to_fp 11 53) d_ack!5248)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403b000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5249)
                           ((_ to_fp 11 53) b_ack!5246))))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x4008000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248)))))
      (a!11 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            a!6
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!10 a!7)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!5247)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!5247)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!15)
                            a!16)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) c_ack!5247))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x403b000000000000)
                                    a!20)
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!5249)
                            ((_ to_fp 11 53) b_ack!5246))))
      (a!25 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            a!7
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))))
      (a!29 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) a_ack!5249))
                            ((_ to_fp 11 53) #x4000000000000000))
                    a!15)))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) b_ack!5246)))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!6
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248)))
                   a!8))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!13
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            ((_ to_fp 11 53) d_ack!5248))))
      (a!19 (fp.div roundNearestTiesToEven
                    a!17
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    a!18)
                            a!4)))
      (a!22 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!21)
                            a!15)
                    a!16))
      (a!26 (fp.sub roundNearestTiesToEven
                    a!25
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))))
      (a!30 (fp.mul roundNearestTiesToEven
                    a!29
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!5246))
                            ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4018000000000000)
                                   a!4))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) d_ack!5248))))
      (a!12 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!9)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!10 a!11)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))))
      (a!23 (fp.div roundNearestTiesToEven
                    a!22
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x404e000000000000)
                                    a!18)
                            a!4)))
      (a!31 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!30 a!16)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) a_ack!5249))
                            ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!24 (fp.add roundNearestTiesToEven
                    a!19
                    (fp.mul roundNearestTiesToEven
                            a!23
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))))
      (a!32 (fp.mul roundNearestTiesToEven
                    a!31
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!5246))
                            ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!27 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!24
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))
                    a!26))
      (a!35 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!32
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!33 a!18)
                                    a!4))
                    a!34)))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!5)
                            (fp.add roundNearestTiesToEven a!12 a!14))
                    a!27)))
(let ((a!36 (fp.abs (fp.add roundNearestTiesToEven
                            a!28
                            (fp.mul roundNearestTiesToEven
                                    a!35
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not (fp.gt a!36 ((_ to_fp 11 53) #x4a511b0ec57e649a))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) b_ack!5246))
                           ((_ to_fp 11 53) #x4018000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           ((_ to_fp 11 53) c_ack!5247))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5246)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!5247)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5246)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!5247))))
      (a!10 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            ((_ to_fp 11 53) a_ack!5249))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!11 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            ((_ to_fp 11 53) b_ack!5246))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!13 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            ((_ to_fp 11 53) c_ack!5247))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!15 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!5249)
                                    ((_ to_fp 11 53) b_ack!5246))
                            ((_ to_fp 11 53) #x4018000000000000))
                    ((_ to_fp 11 53) #x4008000000000000)))
      (a!27 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4052000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) c_ack!5247))
                            ((_ to_fp 11 53) #x4008000000000000))))
      (a!28 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            ((_ to_fp 11 53) d_ack!5248)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403b000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5249)
                           ((_ to_fp 11 53) b_ack!5246))))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x4008000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248)))))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!10)
                            a!11)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) c_ack!5247))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!16 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x403b000000000000)
                                    a!15)
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!5249)
                            ((_ to_fp 11 53) b_ack!5246))))
      (a!20 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            a!7
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))))
      (a!23 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) a_ack!5249))
                            ((_ to_fp 11 53) #x4000000000000000))
                    a!10)))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) b_ack!5246)))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!6
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248)))
                   a!8))
      (a!14 (fp.div roundNearestTiesToEven
                    a!12
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    a!13)
                            a!4)))
      (a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!16)
                            a!10)
                    a!11))
      (a!24 (fp.mul roundNearestTiesToEven
                    a!23
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!5246))
                            ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4018000000000000)
                                   a!4))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) d_ack!5248))))
      (a!18 (fp.div roundNearestTiesToEven
                    a!17
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x404e000000000000)
                                    a!13)
                            a!4)))
      (a!25 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!24 a!11)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) a_ack!5249))
                            ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    a!14
                    (fp.mul roundNearestTiesToEven
                            a!18
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))))
      (a!26 (fp.mul roundNearestTiesToEven
                    a!25
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!5246))
                            ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!21 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!19
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))
                    a!20))
      (a!29 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!26
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!27 a!13)
                                    a!4))
                    a!28)))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!5)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!9))
                    a!21)))
(let ((a!30 (fp.abs (fp.add roundNearestTiesToEven
                            a!22
                            (fp.mul roundNearestTiesToEven
                                    a!29
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not (fp.gt a!30 ((_ to_fp 11 53) #x4a511b0ec57e649a))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) b_ack!5246))
                           ((_ to_fp 11 53) #x4018000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           ((_ to_fp 11 53) c_ack!5247))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5246)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!5247)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5246)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!5247))))
      (a!10 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!5249)
                            ((_ to_fp 11 53) b_ack!5246))
                    ((_ to_fp 11 53) c_ack!5247)))
      (a!15 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            ((_ to_fp 11 53) a_ack!5249))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!16 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            ((_ to_fp 11 53) b_ack!5246))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!18 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            ((_ to_fp 11 53) c_ack!5247))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!20 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!5249)
                                    ((_ to_fp 11 53) b_ack!5246))
                            ((_ to_fp 11 53) #x4018000000000000))
                    ((_ to_fp 11 53) #x4008000000000000)))
      (a!33 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4052000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) c_ack!5247))
                            ((_ to_fp 11 53) #x4008000000000000))))
      (a!34 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            ((_ to_fp 11 53) d_ack!5248)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403b000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5249)
                           ((_ to_fp 11 53) b_ack!5246))))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x4008000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248)))))
      (a!11 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            a!6
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!10 a!7)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!5247)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!5247)
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!15)
                            a!16)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) c_ack!5247))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x403b000000000000)
                                    a!20)
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!5249)
                            ((_ to_fp 11 53) b_ack!5246))))
      (a!25 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            a!7
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))))
      (a!29 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) a_ack!5249))
                            ((_ to_fp 11 53) #x4000000000000000))
                    a!15)))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) b_ack!5246)))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!6
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248)))
                   a!8))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!13
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            ((_ to_fp 11 53) d_ack!5248))))
      (a!19 (fp.div roundNearestTiesToEven
                    a!17
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    a!18)
                            a!4)))
      (a!22 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!21)
                            a!15)
                    a!16))
      (a!26 (fp.sub roundNearestTiesToEven
                    a!25
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))))
      (a!30 (fp.mul roundNearestTiesToEven
                    a!29
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!5246))
                            ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4018000000000000)
                                   a!4))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) d_ack!5248))))
      (a!12 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!9)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!10 a!11)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))))
      (a!23 (fp.div roundNearestTiesToEven
                    a!22
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x404e000000000000)
                                    a!18)
                            a!4)))
      (a!31 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!30 a!16)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) a_ack!5249))
                            ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!24 (fp.add roundNearestTiesToEven
                    a!19
                    (fp.mul roundNearestTiesToEven
                            a!23
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))))
      (a!32 (fp.mul roundNearestTiesToEven
                    a!31
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!5246))
                            ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!27 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!24
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))
                    a!26))
      (a!35 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!32
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!33 a!18)
                                    a!4))
                    a!34)))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!5)
                            (fp.add roundNearestTiesToEven a!12 a!14))
                    a!27)))
(let ((a!36 (fp.abs (fp.add roundNearestTiesToEven
                            a!28
                            (fp.mul roundNearestTiesToEven
                                    a!35
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not (fp.lt a!36 ((_ to_fp 11 53) #x358dee7a4ad4b81e))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) b_ack!5246))
                           ((_ to_fp 11 53) #x4018000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           ((_ to_fp 11 53) c_ack!5247))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!6 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5246)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!5247)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5246)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!5247))))
      (a!10 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            ((_ to_fp 11 53) a_ack!5249))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!11 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            ((_ to_fp 11 53) b_ack!5246))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!13 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            ((_ to_fp 11 53) c_ack!5247))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!15 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!5249)
                                    ((_ to_fp 11 53) b_ack!5246))
                            ((_ to_fp 11 53) #x4018000000000000))
                    ((_ to_fp 11 53) #x4008000000000000)))
      (a!27 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4052000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) c_ack!5247))
                            ((_ to_fp 11 53) #x4008000000000000))))
      (a!28 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            ((_ to_fp 11 53) d_ack!5248)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403b000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5249)
                           ((_ to_fp 11 53) b_ack!5246))))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x4008000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248)))))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!10)
                            a!11)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) c_ack!5247))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!16 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x403b000000000000)
                                    a!15)
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!5249)
                            ((_ to_fp 11 53) b_ack!5246))))
      (a!20 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            a!7
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))))
      (a!23 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) a_ack!5249))
                            ((_ to_fp 11 53) #x4000000000000000))
                    a!10)))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5249)
                                   ((_ to_fp 11 53) b_ack!5246)))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!6
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) d_ack!5248)))
                   a!8))
      (a!14 (fp.div roundNearestTiesToEven
                    a!12
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4018000000000000)
                                    a!13)
                            a!4)))
      (a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!16)
                            a!10)
                    a!11))
      (a!24 (fp.mul roundNearestTiesToEven
                    a!23
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!5246))
                            ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4018000000000000)
                                   a!4))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) d_ack!5248))))
      (a!18 (fp.div roundNearestTiesToEven
                    a!17
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x404e000000000000)
                                    a!13)
                            a!4)))
      (a!25 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!24 a!11)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) a_ack!5249))
                            ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    a!14
                    (fp.mul roundNearestTiesToEven
                            a!18
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))))
      (a!26 (fp.mul roundNearestTiesToEven
                    a!25
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!5246))
                            ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!21 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!19
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) d_ack!5248)))
                    a!20))
      (a!29 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!26
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!27 a!13)
                                    a!4))
                    a!28)))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!5)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!9))
                    a!21)))
(let ((a!30 (fp.abs (fp.add roundNearestTiesToEven
                            a!22
                            (fp.mul roundNearestTiesToEven
                                    a!29
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not (fp.lt a!30 ((_ to_fp 11 53) #x358dee7a4ad4b81e))))))))))))
(assert (FPCHECK_FADD_UNDERFLOW #x4010000000000000 b_ack!5246))

(check-sat)
(exit)
