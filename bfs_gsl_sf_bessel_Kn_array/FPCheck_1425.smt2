(declare-fun a_ack!5482 () (_ BitVec 32))
(declare-fun b_ack!5480 () (_ BitVec 32))
(declare-fun c_ack!5481 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!5482 #x00000000)))
(assert (not (bvslt b_ack!5480 a_ack!5482)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!5481) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!5480))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!5481) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!5481) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!5481))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!5481)
                       ((_ to_fp 11 53) c_ack!5481))
               ((_ to_fp 11 53) c_ack!5481))
       ((_ to_fp 11 53) c_ack!5481)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!5481))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!5481)
                       ((_ to_fp 11 53) c_ack!5481))
               ((_ to_fp 11 53) c_ack!5481))
       ((_ to_fp 11 53) c_ack!5481)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!5481)
                           ((_ to_fp 11 53) c_ack!5481))
                   ((_ to_fp 11 53) #x3d9d141fcb837472))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3e14c2029d5d2fb5)
                         a!1)
                 ((_ to_fp 11 53) #x3e14c2029d5d2fb5))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!5481)
                           ((_ to_fp 11 53) c_ack!5481))
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
                                   ((_ to_fp 11 53) c_ack!5481)
                                   ((_ to_fp 11 53) c_ack!5481))
                           ((_ to_fp 11 53) #x3d9d141fcb837472)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3e85d6b25be0bee4)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!5481)
                                   ((_ to_fp 11 53) c_ack!5481))
                           a!1))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3eef47476772d4d9)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!5481)
                                   ((_ to_fp 11 53) c_ack!5481))
                           a!2))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f4bb90e85e098db)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!5481)
                                   ((_ to_fp 11 53) c_ack!5481))
                           a!3))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f99dadb01454042)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!5481)
                                   ((_ to_fp 11 53) c_ack!5481))
                           a!4))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd1dadb014541ec)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!5481)
                                   ((_ to_fp 11 53) c_ack!5481))
                           a!5))))
  (FPCHECK_FADD_UNDERFLOW
    #x3fbdadb014541eb2
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!5481)
                    ((_ to_fp 11 53) c_ack!5481))
            a!6)))))))))

(check-sat)
(exit)
