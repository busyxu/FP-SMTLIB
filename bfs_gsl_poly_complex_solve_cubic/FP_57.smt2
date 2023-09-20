(declare-fun c_ack!2146 () (_ BitVec 64))
(declare-fun b_ack!2145 () (_ BitVec 64))
(declare-fun a_ack!2147 () (_ BitVec 64))
(declare-fun CF_cos ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_acos ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!2147))
                           ((_ to_fp 11 53) a_ack!2147))
                   ((_ to_fp 11 53) a_ack!2147))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4022000000000000)
                                   ((_ to_fp 11 53) a_ack!2147))
                           ((_ to_fp 11 53) b_ack!2145)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403b000000000000)
                                   ((_ to_fp 11 53) c_ack!2146)))
                   ((_ to_fp 11 53) #x404b000000000000))))
  (not (fp.eq a!3 ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!2147))
                           ((_ to_fp 11 53) a_ack!2147))
                   ((_ to_fp 11 53) a_ack!2147)))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2147)
                           ((_ to_fp 11 53) a_ack!2147))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           ((_ to_fp 11 53) b_ack!2145)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4022000000000000)
                                   ((_ to_fp 11 53) a_ack!2147))
                           ((_ to_fp 11 53) b_ack!2145))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40a6c80000000000)
                                   a!5)
                           a!5)
                   a!5)))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4086c80000000000)
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403b000000000000)
                                   ((_ to_fp 11 53) c_ack!2146))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403b000000000000)
                                   ((_ to_fp 11 53) c_ack!2146))))))
  (not (fp.eq a!4 a!6)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!2147))
                           ((_ to_fp 11 53) a_ack!2147))
                   ((_ to_fp 11 53) a_ack!2147)))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2147)
                                   ((_ to_fp 11 53) a_ack!2147))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) b_ack!2145)))
                   ((_ to_fp 11 53) #x4022000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4022000000000000)
                                   ((_ to_fp 11 53) a_ack!2147))
                           ((_ to_fp 11 53) b_ack!2145)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403b000000000000)
                                   ((_ to_fp 11 53) c_ack!2146)))
                   ((_ to_fp 11 53) #x404b000000000000))))
  (fp.lt (fp.mul roundNearestTiesToEven a!3 a!3)
         (fp.mul roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!4 a!4)
                 a!4))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!2147))
                           ((_ to_fp 11 53) a_ack!2147))
                   ((_ to_fp 11 53) a_ack!2147)))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2147)
                                   ((_ to_fp 11 53) a_ack!2147))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) b_ack!2145)))
                   ((_ to_fp 11 53) #x4022000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4022000000000000)
                                   ((_ to_fp 11 53) a_ack!2147))
                           ((_ to_fp 11 53) b_ack!2145))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!4 a!4)
                                   a!4))
                   ((_ to_fp 11 53) #x0010000000000000))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403b000000000000)
                                   ((_ to_fp 11 53) c_ack!2146)))
                   ((_ to_fp 11 53) #x404b000000000000))))
  (fp.geq (fp.abs (fp.mul roundNearestTiesToEven a!3 a!3)) a!5)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!2147))
                           ((_ to_fp 11 53) a_ack!2147))
                   ((_ to_fp 11 53) a_ack!2147))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4022000000000000)
                                   ((_ to_fp 11 53) a_ack!2147))
                           ((_ to_fp 11 53) b_ack!2145)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403b000000000000)
                                   ((_ to_fp 11 53) c_ack!2146)))
                   ((_ to_fp 11 53) #x404b000000000000))))
(let ((a!4 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (ite (fp.geq a!3 ((_ to_fp 11 53) #x0000000000000000))
                  #x00000001
                  #xffffffff))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (CF_acos (fp.mul roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x2173988e1409212e)))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc57a20bd700c2c3e)
                                   (CF_cos a!5))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2147)
                                   ((_ to_fp 11 53) #x4008000000000000)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2147)
                           ((_ to_fp 11 53) #x4008000000000000)))))
  (fp.eq a!6
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #xc57a20bd700c2c3e)
                 (CF_cos a!5))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!2147))
                           ((_ to_fp 11 53) a_ack!2147))
                   ((_ to_fp 11 53) a_ack!2147))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4022000000000000)
                                   ((_ to_fp 11 53) a_ack!2147))
                           ((_ to_fp 11 53) b_ack!2145)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403b000000000000)
                                   ((_ to_fp 11 53) c_ack!2146)))
                   ((_ to_fp 11 53) #x404b000000000000))))
(let ((a!4 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (ite (fp.geq a!3 ((_ to_fp 11 53) #x0000000000000000))
                  #x00000001
                  #xffffffff))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (CF_acos (fp.mul roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x2173988e1409212e)))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc57a20bd700c2c3e)
                           (CF_cos a!5))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc57a20bd700c2c3e)
                                   (CF_cos a!5))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2147)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
  (fp.eq a!6
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!2147)
                 ((_ to_fp 11 53) #x4008000000000000))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!2147))
                           ((_ to_fp 11 53) a_ack!2147))
                   ((_ to_fp 11 53) a_ack!2147))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4022000000000000)
                                   ((_ to_fp 11 53) a_ack!2147))
                           ((_ to_fp 11 53) b_ack!2145)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403b000000000000)
                                   ((_ to_fp 11 53) c_ack!2146)))
                   ((_ to_fp 11 53) #x404b000000000000))))
(let ((a!4 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (ite (fp.geq a!3 ((_ to_fp 11 53) #x0000000000000000))
                  #x00000001
                  #xffffffff))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (CF_acos (fp.mul roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x2173988e1409212e)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!6 (fp.add roundNearestTiesToEven
                   (CF_acos (fp.mul roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x2173988e1409212e)))
                   ((_ to_fp 11 53) #x401921fb54442d18))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc57a20bd700c2c3e)
                   (CF_cos (fp.div roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x4008000000000000))))))
  (fp.gt (fp.sub roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #xc57a20bd700c2c3e)
                         (CF_cos a!5))
                 (fp.div roundNearestTiesToEven
                         ((_ to_fp 11 53) a_ack!2147)
                         ((_ to_fp 11 53) #x4008000000000000)))
         (fp.sub roundNearestTiesToEven
                 a!7
                 (fp.div roundNearestTiesToEven
                         ((_ to_fp 11 53) a_ack!2147)
                         ((_ to_fp 11 53) #x4008000000000000)))))))))))

(check-sat)
(exit)
