(declare-fun a_ack!644 () (_ BitVec 32))
(declare-fun b_ack!642 () (_ BitVec 32))
(declare-fun c_ack!643 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!644 #x00000000)))
(assert (not (bvslt b_ack!642 a_ack!644)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!643) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!642))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!643) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!643) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!643))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!643)
                       ((_ to_fp 11 53) c_ack!643))
               ((_ to_fp 11 53) c_ack!643))
       ((_ to_fp 11 53) c_ack!643)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!643))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!643)
                       ((_ to_fp 11 53) c_ack!643))
               ((_ to_fp 11 53) c_ack!643))
       ((_ to_fp 11 53) c_ack!643)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!643)
                           ((_ to_fp 11 53) c_ack!643))
                   ((_ to_fp 11 53) #x3d9d141fcb837472))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3e14c2029d5d2fb5)
                         a!1)
                 ((_ to_fp 11 53) #x3e14c2029d5d2fb5))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!643)
                           ((_ to_fp 11 53) c_ack!643))
                   ((_ to_fp 11 53) #x3d9d141fcb837472))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3e14c2029d5d2fb5)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3e14c2029d5d2fb5))))
(assert (FPCHECK_FMUL_ACCURACY
  #x3fd0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!643)
          ((_ to_fp 11 53) c_ack!643))))

(check-sat)
(exit)
