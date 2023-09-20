(declare-fun a_ack!2217 () (_ BitVec 32))
(declare-fun b_ack!2216 () (_ BitVec 64))
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!2217 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2216) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2216) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!2217)))
(assert (not (= #x00000001 a_ack!2217)))
(assert (not (= #x00000002 a_ack!2217)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!2217)
                                   ((_ to_fp 11 53) #x3fe0000000000000)))
                   ((_ to_fp 11 53) #x4005bf0a8b145769))))
  (not (fp.lt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) b_ack!2216)
                      ((_ to_fp 11 53) b_ack!2216))
              a!1))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd (bvmul a_ack!2217 a_ack!2217) a_ack!2217))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.gt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3f20000000000000)
                      ((_ to_fp 11 53) b_ack!2216))
              a!1))))
(assert (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2217)
       ((_ to_fp 11 53) #x407965fea53d6e3a)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2216) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2217)
                     ((_ to_fp 11 53) #x3fe0000000000000))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2216)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!2217)
                                   ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f947ae147ae147b)))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!2216)
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2217)
                       ((_ to_fp 11 53) #x3fe0000000000000)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!2216)
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2217)
                       ((_ to_fp 11 53) #x3fe0000000000000)))
       ((_ to_fp 11 53) #x3fef5c28f5c28f5c)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!2216)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2217)
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         (fp.mul roundNearestTiesToEven a!1 a!1))
                 (fp.mul roundNearestTiesToEven a!1 a!1))
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!2216)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2217)
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         (fp.mul roundNearestTiesToEven a!1 a!1)))
         (fp.mul roundNearestTiesToEven a!1 a!1))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ffd760986e39916)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2216)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!2217)
                                   ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 (CF_pow (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff8000000000000)
                           (fp.sub roundNearestTiesToEven
                                   (CF_log a!1)
                                   ((_ to_fp 11 53) #x3feaec130dc7322c)))
                   #x3fe5555555555555)))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40b2000000000000)
                                   a!2)
                           a!2)
                   a!2)))
  (fp.eq a!3 ((_ to_fp 11 53) #x0000000000000000))))))

(check-sat)
(exit)
