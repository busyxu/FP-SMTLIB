(declare-fun a_ack!5359 () (_ BitVec 32))
(declare-fun b_ack!5357 () (_ BitVec 32))
(declare-fun c_ack!5358 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!5359 #x00000000)))
(assert (not (bvslt b_ack!5357 a_ack!5359)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!5358) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!5357))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!5358) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!5358) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!5358))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!5358)
                       ((_ to_fp 11 53) c_ack!5358))
               ((_ to_fp 11 53) c_ack!5358))
       ((_ to_fp 11 53) c_ack!5358)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!5358))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!5358)
                       ((_ to_fp 11 53) c_ack!5358))
               ((_ to_fp 11 53) c_ack!5358))
       ((_ to_fp 11 53) c_ack!5358)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!5358)
                           ((_ to_fp 11 53) c_ack!5358))
                   ((_ to_fp 11 53) #x3d9d141fcb837472))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3e14c2029d5d2fb5)
                         a!1)
                 ((_ to_fp 11 53) #x3e14c2029d5d2fb5))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!5358)
                           ((_ to_fp 11 53) c_ack!5358))
                   ((_ to_fp 11 53) #x3d9d141fcb837472))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3e14c2029d5d2fb5)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3e14c2029d5d2fb5))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3e14c2029d5d2fb5)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!5358)
                                   ((_ to_fp 11 53) c_ack!5358))
                           ((_ to_fp 11 53) #x3d9d141fcb837472)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3e85d6b25be0bee4)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!5358)
                                   ((_ to_fp 11 53) c_ack!5358))
                           a!1))))
  (FPCHECK_FADD_OVERFLOW
    #x3eef47476772d4d9
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!5358)
                    ((_ to_fp 11 53) c_ack!5358))
            a!2)))))

(check-sat)
(exit)
