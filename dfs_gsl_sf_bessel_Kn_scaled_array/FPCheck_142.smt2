(declare-fun a_ack!635 () (_ BitVec 32))
(declare-fun b_ack!633 () (_ BitVec 32))
(declare-fun c_ack!634 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!635 #x00000000)))
(assert (not (bvslt b_ack!633 a_ack!635)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!634) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!633))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!634) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!634) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!634))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!634)
                       ((_ to_fp 11 53) c_ack!634))
               ((_ to_fp 11 53) c_ack!634))
       ((_ to_fp 11 53) c_ack!634)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!634))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!634)
                       ((_ to_fp 11 53) c_ack!634))
               ((_ to_fp 11 53) c_ack!634))
       ((_ to_fp 11 53) c_ack!634)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!634)
                           ((_ to_fp 11 53) c_ack!634))
                   ((_ to_fp 11 53) #x3d9d141fcb837472))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3e14c2029d5d2fb5)
                         a!1)
                 ((_ to_fp 11 53) #x3e14c2029d5d2fb5))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!634)
                           ((_ to_fp 11 53) c_ack!634))
                   ((_ to_fp 11 53) #x3d9d141fcb837472))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3e14c2029d5d2fb5)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3e14c2029d5d2fb5))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3fd0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!634)
          ((_ to_fp 11 53) c_ack!634))))

(check-sat)
(exit)
