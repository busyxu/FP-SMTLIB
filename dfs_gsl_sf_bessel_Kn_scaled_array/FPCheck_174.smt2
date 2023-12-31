(declare-fun a_ack!803 () (_ BitVec 32))
(declare-fun b_ack!801 () (_ BitVec 32))
(declare-fun c_ack!802 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!803 #x00000000)))
(assert (not (bvslt b_ack!801 a_ack!803)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!802) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!801))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!802) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!802) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!802))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!802)
                       ((_ to_fp 11 53) c_ack!802))
               ((_ to_fp 11 53) c_ack!802))
       ((_ to_fp 11 53) c_ack!802)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!802))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!802)
                       ((_ to_fp 11 53) c_ack!802))
               ((_ to_fp 11 53) c_ack!802))
       ((_ to_fp 11 53) c_ack!802)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!802)
                           ((_ to_fp 11 53) c_ack!802))
                   ((_ to_fp 11 53) #x3d9d141fcb837472))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3e14c2029d5d2fb5)
                         a!1)
                 ((_ to_fp 11 53) #x3e14c2029d5d2fb5))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!802)
                           ((_ to_fp 11 53) c_ack!802))
                   ((_ to_fp 11 53) #x3d9d141fcb837472))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3e14c2029d5d2fb5)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3e14c2029d5d2fb5))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!802)
                           ((_ to_fp 11 53) c_ack!802)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ec02e1f9fbac1eb)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3e656cf1aeb212bc))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f5c71c71bafcbaf)
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f12345703982239)
                                   a!2)))))
  (FPCHECK_FADD_ACCURACY
    #x3fcfffffffffffc0
    (fp.mul roundNearestTiesToEven
            a!1
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f9c71c71c7247e2)
                    (fp.mul roundNearestTiesToEven a!1 a!3))))))))

(check-sat)
(exit)
